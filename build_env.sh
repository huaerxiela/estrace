cd ..
git clone https://github.com/SeeFlowerX/ebpf
cd ebpf && git reset --hard b50db1997e47bab29d9278f4b4ee1dabe981b8c4 && cd ..
git clone https://github.com/SeeFlowerX/ebpfmanager
cd ebpfmanager && git reset --hard e54e4137aea3782bd97834e1dc0d729182b630a6 && cd ..

cd estrace
mkdir -p external && cd external
git clone https://android.googlesource.com/platform/bionic --depth=1
mkdir system && cd system
git clone https://android.googlesource.com/platform/system/core --depth=1
cd ..
git clone https://android.googlesource.com/platform/external/libbpf --depth=1
cd ..
