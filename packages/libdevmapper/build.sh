TERMUX_PKG_HOMEPAGE=http://sourceware.org/lvm2/
TERMUX_PKG_DESCRIPTION="A device-mapper library from LVM2 package"
TERMUX_PKG_DEPENDS="libandroid-support"
TERMUX_PKG_VERSION=2.02.177
TERMUX_PKG_SRCURL=https://mirrors.kernel.org/sourceware/lvm2/releases/LVM2.${TERMUX_PKG_VERSION}.tgz
TERMUX_PKG_SHA256=4025a23ec9b15c2cb7486d151c29dc953b75efc4d452cfe9dbbc7c0fac8e80f2
TERMUX_PKG_BUILD_IN_SRC=yes

termux_step_make() {
    make -j"${TERMUX_MAKE_PROCESSES}" lib.device-mapper
}

termux_step_make_install() {
    cd libdm
    make install
}

