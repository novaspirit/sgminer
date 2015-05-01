rem setx GPU_MAX_HEAP_SIZE 100
rem setx GPU_USE_SYNC_OBJECTS 1
rem setx GPU_MAX_ALLOC_PERCENT 100
del *.bin

@rem sgminer.exe --no-submit-stale --kernel Lyra2RE -o stratum+tcp://pool.verters.com:4444 -u djm34t.user -p password --gpu-platform 2 
@rem sgminer.exe --no-submit-stale --kernel pluck -o stratum+tcp://sup.suprnova.cc:7777  -u djm34.2 -p password   --gpu-platform 2 --thread-concurrency 8192 -w 4  -I 12
@rem sgminer.exe --no-submit-stale --kernel yescrypt -o stratum+tcp://mine2.bsty.nonce-pool.com:4095 -u djm34.1 -p password  --gpu-platform 1 -w 32 --thread-concurrency 512 --text-only --debug
@rem sgminer.exe --no-submit-stale --kernel yescrypt -o stratum+tcp://mine2.bsty.nonce-pool.com:4095 -u djm34.1 -p password  --gpu-platform 1 -w 32 --thread-concurrency 512 --text-only -D

sgminer.exe --no-submit-stale --kernel yescrypt -o stratum+tcp://mine2.bsty.nonce-pool.com:4095 -u djm34.1 -p password  --gpu-platform 0  -w 16 -g 2
pause