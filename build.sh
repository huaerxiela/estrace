#ebfp==b50db1997e47bab29d9278f4b4ee1dabe981b8c4
#ebpfmanager==e54e4137aea3782bd97834e1dc0d729182b630a6

export NDK_ROOT=/Users/admin/Library/Android/sdk/ndk/27.0.12077973
export PATH=$NDK_ROOT/toolchains/llvm/prebuilt/darwin-x86_64/bin:$PATH

go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct

make clean && make

adb push bin/estrace /data/local/tmp
adb shell chmod +x /data/local/tmp/estrace