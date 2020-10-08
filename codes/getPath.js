const cwd = process.cwd();
const path = require('path');

const getStaticPath = () => {
    const staticPath = "www.sunibas.cn.static/";

    return path.join(cwd.substring(cwd.indexOf(staticPath)),staticPath)
}

module.exports = {
    getStaticPath
};