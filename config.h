#ifndef _CONFIG_H
#define _CONFIG_H

#include <QCoreApplication>
#include "support/utils.h"

#if QT_VERSION >= 0x050600
#define DEVICE_PIXEL_RATIO devicePixelRatioF
#else
#define DEVICE_PIXEL_RATIO devicePixelRatio
#endif

#define CANTATA_MAKE_VERSION(a, b, c) (((a) << 16) | ((b) << 8) | (c))
#define PACKAGE_NAME  "cantata"
#define ORGANIZATION_NAME "mpd"
#define PACKAGE_VERSION CANTATA_MAKE_VERSION(2, 3, 3)
#define PACKAGE_STRING  PACKAGE_NAME" 2.3.3"
#define PACKAGE_VERSION_STRING "2.3.3"
#define INSTALL_PREFIX "C:/cantata/install3"
#define SHARE_INSTALL_PREFIX "C:/cantata/install3"
#define ICON_INSTALL_PREFIX "C:/cantata/install3/icons/cantata"

/* #undef ENABLE_DEVICES_SUPPORT */
/* #undef ENABLE_REMOTE_DEVICES */
/* #undef COMPLEX_TAGLIB_FILENAME */
#define TAGLIB_FOUND 1
#define TAGLIB_ASF_FOUND
#define TAGLIB_MP4_FOUND 1
#define TAGLIB_OPUS_FOUND 1
/* #undef MTP_FOUND */
#define ENABLE_HTTP_STREAM_PLAYBACK 1
/* #undef ENABLE_KWALLET */
/* #undef FFMPEG_FOUND */
/* #undef MPG123_FOUND */
/* #undef CDDB_FOUND */
/* #undef MUSICBRAINZ5_FOUND */
/* #undef ENABLE_REPLAYGAIN_SUPPORT */
/* #undef TAGLIB_CAN_SAVE_ID3VER */
#define ENABLE_PROXY_CONFIG 1
/* #undef CDPARANOIA_HAS_CACHEMODEL_SIZE */
/* #undef CDIOPARANOIA_FOUND */
/* #undef QT_QTDBUS_FOUND */
#define ENABLE_HTTP_SERVER 1
/* #undef IOKIT_FOUND */
/* #undef QT_MAC_EXTRAS_FOUND */
/* #undef ENABLE_SIMPLE_MPD_SUPPORT */
/* #undef AVAHI_FOUND */

/* #undef HAVE_CDIO_PARANOIA_H */
/* #undef HAVE_CDIO_PARANOIA_PARANOIA_H */
/* #undef HAVE_CDIO_CDDA_H */
/* #undef HAVE_CDIO_PARANOIA_CDDA_H */

#define CANTATA_REV_URL "mpd.cantata"
#define CANTATA_URL "cantata.mpd"

#define CANTATA_SYS_ICONS_DIR   Utils::systemDir(QLatin1String("icons"))
#define CANTATA_SYS_MPD_DIR     Utils::systemDir(QLatin1String("mpd"))
#define CANTATA_SYS_TRANS_DIR   Utils::systemDir(QLatin1String("translations"))
#define CANTATA_SYS_SCRIPTS_DIR Utils::systemDir(QLatin1String("scripts"))

#define LINUX_LIB_DIR ""

#define CANTATA_ICON_THEME ""

#endif
