RUN source /build.sh; install_binutils
RUN source /build.sh; download_gcc
RUN source /build.sh; install_gcc_bootstrap
RUN source /build.sh; install_mingw_stage1
RUN source /build.sh; install_mingw_stage2
RUN source /build.sh; install_gcc
