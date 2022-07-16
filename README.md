# build-android

基于 docker 容器的 android 系统编译环境.

## 使用方法

### 运行容器

> 当前目录会关联到容器的 /root/android 目录

```bash
docker run -it --rm --detach --privileged --network=host -v /dev/bus/usb:/dev/bus/usb --memory='16g' --memory-swap='32g' --volume `pwd`:/root/android --name build-android knownitwhy/build-android:latest
```

### 进入容器

```bash
docker attach build-android
```

### 编译 Android

参考文档: [Building Android](https://source.android.com/setup/build/building)

### 退出容器

```bash
Ctrl-P + Ctrl-Q
```

### 销毁容器

```bash
docker stop build-android
```
