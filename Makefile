IGNORE_DEPS += edown eper eunit_formatters meck node_package rebar_lock_deps_plugin rebar_vsn_plugin reltool_util
C_SRC_DIR = /path/do/not/exist
C_SRC_TYPE = rebar
DRV_CFLAGS = -fPIC
export DRV_CFLAGS
ERLANG_ARCH = 64
export ERLANG_ARCH
ERLC_OPTS = +debug_info
export ERLC_OPTS
ERLC_OPTS += +'{parse_transform, lager_transform}'

DEPS += gproc
dep_gproc = git git://github.com/uwiger/gproc.git master
DEPS += lager
dep_lager = git git://github.com/basho/lager.git master
DEPS += gen_logger
dep_gen_logger = git git://github.com/emqtt/gen_logger.git master
DEPS += esockd
dep_esockd = git git://github.com/emqtt/esockd.git master
DEPS += mochiweb
dep_mochiweb = git git://github.com/emqtt/mochiweb.git master
COMPILE_FIRST += gen_server2 emqttd_auth_mod emqttd_acl_mod


rebar_dep: preprocess pre-deps deps pre-app app

preprocess::

pre-deps::

pre-app::

include ../../erlang.mk