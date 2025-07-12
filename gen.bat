
del %~dp0\src\lib.rs
del %~dp0\build.rs
del %~dp0\device.x

svd2rust --target cortex-m -i %~dp0\svd\LKS32MC03x_patch.svd

move %~dp0\lib.rs %~dp0\src\lib.rs

cargo fmt

cargo build
