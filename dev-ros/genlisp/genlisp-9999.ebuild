# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

ROS_REPO_URI="https://github.com/ros/genlisp"
KEYWORDS="~amd64 ~arm"
PYTHON_COMPAT=( python{2_7,3_5,3_6} pypy{,3} )

inherit ros-catkin

DESCRIPTION="Common-Lisp ROS message and service generators"
LICENSE="BSD"
SLOT="0/${PV}"
IUSE=""

RDEPEND="dev-ros/genmsg[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
