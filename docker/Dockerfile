FROM opensuse:leap
RUN zypper ar obs://Virtualization:Appliances appliances
RUN zypper --gpg-auto-import-keys up -y
RUN zypper in -y kiwi-{desc-isoboot,desc-isoboot-requires,doc,templates}
WORKDIR /kiwi
