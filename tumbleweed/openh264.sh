# https://news.opensuse.org/2023/01/24/opensuse-simplifies-codec-install/

zypper ar http://codecs.opensuse.org/openh264/openSUSE_Tumbleweed repo-openh264
zypper ref
zypper in gstreamer-plugin-openh264