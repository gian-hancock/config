# FIO tests:

Test instructions from https://arstechnica.com/gadgets/2020/02/how-fast-are-your-disks-find-out-the-open-source-way-with-fio/

NOTE: Change `ioengine` to windowsaio when running on windows

## Single 4KiB random write process
```
fio --name=random-write --ioengine=posixaio --rw=randwrite --bs=4k --size=4g --numjobs=1 --iodepth=1 --runtime=60 --time_based --end_fsync=1
```

Results:
- Ubuntu Portable:  bw=116 MiB/s
- Windows HP ZBook: bw=122 MiB/s
- Windows Desktop:  bw=111 MiB/s

## 16 parallel 64KiB random write processes

```
fio --name=random-write --ioengine=posixaio --rw=randwrite --bs=64k --size=256m --numjobs=16 --iodepth=16 --runtime=60 --time_based --end_fsync=1
```

Results:
- Ubuntu Portable:  bw=374  MiB/s
- Windows HP ZBook: bw=2693 MiB/s
- Windows Desktop:  bw=690  MiB/s

## Single 1MiB random write process

```
fio --name=random-write --ioengine=posixaio --rw=randwrite --bs=1m --size=16g --numjobs=1 --iodepth=1 --runtime=60 --time_based --end_fsync=1
```

Results:
- Ubuntu Portable:  bw=367  MiB/s
- Windows HP ZBook: bw=1647 MiB/s
- Windows Desktop:  bw=151  KiB/s

## Single 1MiB random read process

```
fio --name=random-read --ioengine=posixaio --rw=randread --bs=1m --size=16g --numjobs=1 --iodepth=1 --runtime=60 --time_based --end_fsync=1
```

Results:
- Ubuntu Portable: bw=290  MiB/s
- Windows HP:      bw=4240 MiB/s
- Windows Desktop: bw=858  MiB/s
