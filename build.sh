export NDK_ROOT=/Users/admin/Library/Android/sdk/ndk/25.1.8937393
export PATH=$NDK_ROOT/toolchains/llvm/prebuilt/darwin-x86_64/bin:$PATH

go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct

make clean && make

adb push bin/estrace /data/local/tmp
adb shell chmod +x /data/local/tmp/estrace
