# Copyright 2022-2023 <selenicfox>


EAPI=7

inherit rpm


MY_PN="SceneBuilder"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="JavaFX Scene Builder"
HOMEPAGE="https://gluonhq.com/"
SRC_URI="https://github.com/gluonhq/scenebuilder/releases/download/${PV}/SceneBuilder-${PV}.rpm"

S="${WORKDIR}"


SLOT="0"
KEYWORDS="*"

BDEPEND="app-arch/rpm"

src_unpack() {
	rpm_src_unpack ${A}	
}

src_install() {
	rsync -av  "${WORKDIR}/" "${D}/" || die "Install failed!"
}
