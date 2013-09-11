# Grab Python MSI files
# TODO: scrape for the latest stable version
wget http://python.org/ftp/python/3.3.2/python-3.3.2.msi
wget http://python.org/ftp/python/3.3.2/python-3.3.2.msi.asc

# Check signature (as per instructions at www.python.org/download/ ,
# change these key IDs if the maintainers change.
gpg --recv-keys EA5BBD71 6A45C816 7D9DC8D2 A4135B38 36580288
gpg --verify python-3.3.2.msi.asc
