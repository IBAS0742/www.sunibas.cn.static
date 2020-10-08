const https = require('https');
const fs = require('fs');
const path = require('path');
const getStaticPath = require('./getPath').getStaticPath;

let query = function (url) {
    return new Promise(function (s) {
        let option = {
            method: 'get',
            headers: {
                'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'
            }
        };
        var req = https.request(url,option,function (res) {
            res.setEncoding('utf-8');

            var responseString = '';

            res.on('data', function (data) {
                responseString += data;
            });

            res.on('end', function () {
                s(responseString);
            });

            req.on('error', function (e) {
                // TODO: handle error.
                console.log('-----error-------', e);
                f(e);
            });
        });
        req.end();
    });
};

let pic = new (class {
    constructor(getPicOver) {
        this.picUrl = [];
        this.tasks = [];
        this.images = [];
        this.getting = false;
        this.getPicOver = getPicOver || (_ => _);
    }

    init() {
        if (this.getting) {
            return this;
        }
        let pic = [];
        this.images = [];
        for (let i = 0;i < 8;i++) {
            pic.push(`https://cn.bing.com/HPImageArchive.aspx?format=js&idx=${i}&n=1&nc=${new Date().getTime()}&pid=hp`)
        }
        this.picUrl = pic;
        this.getPic();
        return this;
    }

    getPic() {
        if (this.getting) {
            return this;
        }
        let $this = this;
        this.getting = true;
        this.picUrl.forEach(pic => {
            this.tasks.push((function () {
                query(pic).then(JSON.parse)
                    .then(_ => {
                        if (_ && 'images' in _ && (_.images instanceof Array) && _.images.length) {
                            $this.images.push({
                                url: `https://cn.bing.com` + _.images[0].url,
                                copyright: _.images[0].copyright,
                                copyrightlink: `https://cn.bing.com` + _.images[0].copyrightlink
                            });
                        }
                        if ($this.tasks.length) {
                            $this.tasks.pop()();
                        } else {
                            $this.getPicOver($this.images);
                            $this.getting = false;
                        }
                    })
            }).bind(null,$this));
        });
        $this.tasks.pop()();
        return this;
    }
})(function (pic) {
    fs.writeFileSync(path.join(getStaticPath(),"jsons/bingPic.json"),JSON.stringify(pic,),'utf-8');
});

setInterval(function () {
    pic.init();
},1000 * 60 * 6);
pic.init();

// https://cn.bing.com/th?id=OHR.FatBearWeek_ZH-CN2381854464_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp