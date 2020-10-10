const cwd = process.cwd();
const path = require('path');

const getStaticPath = () => {
    const staticPath = "www.sunibas.cn.static";

    return path.join(cwd.substring(0,cwd.indexOf(staticPath)),staticPath)
}

module.exports = {
    getStaticPath
};