运行demo
1.
source ~/.bash_profile
yarn add react-native

2.
cd ios
pod install


新创建注意事项如下：
安装
https://www.react-native.cn/docs/environment-setup
安装Node
brew install node
安装Watchman
brew install watchman

设置npm镜像源
如果不设置成国内镜像，在后期开发过程中，npm包下载速度很慢或存在无法下载的情况。
npm config set registry https://registry.npm.taobao.org --global
npm config set disturl https://npm.taobao.org/dist --global


安装工具
npm install -g yarn react-native-cli

设置镜像源
yarn config set registry https://registry.npm.taobao.org --global
yarn config set disturl https://npm.taobao.org/dist --global

初始化工程
react-native init TestRN

1.react-native init TypeError: cli.init is not a function-------------yarn add react-native ——————exact
init失败，error Error: Command failed: yarn add react-native@latest------------npm install -g yarn-----npx react-native init TestRN


卸载重装
查看 gem -list
卸载sudo gem uninstall cocoapods


下载demo，启动npm install失败----------npm install --registry=https://registry.npm.taobao.org

// 其他问题
## 安装yarn后，使用yarn命令找不到
1.open ~/.bash_profile
2.export PATH="$PATH:/Users/lushuang/.yarn/bin"
3.source ~/.bash_profile
4.yarn -version

##  NA + RN 参考官网https://www.react-native.cn/docs/integration-with-existing-apps

1.ios文件夹
2.package.json
3.yarn add react-native---- Error: unable to get local issuer certificate------yarn config  set strict-ssl false

3.index.js


## 运行Metro
source ~/.bash_profile
yarn start
或 npm start
#### 真机调试
-U and -bitcode_bundle (Xcode setting ENABLE_BITCODE=YES) cannot be used together
方案：Podfile文件：use_frameworks! :linkage => :static

## 真机bundle
* 创建/iOS/bundle/index.jsbundle
* 根目录执行一下命令
    * react-native bundle --entry-file ./index.js --bundle-output ./ios/bundle/index.jsbundle --platform ios --assets-dest ./ios/bundle --dev false
    * xcode工程添加上述jsbundle文件





