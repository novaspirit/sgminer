rem setx GPU_MAX_HEAP_SIZE 100
rem setx GPU_USE_SYNC_OBJECTS 1
rem setx GPU_MAX_ALLOC_PERCENT 100
del *.bin

@rem sgminer.exe --no-submit-stale --kernel Lyra2RE -o stratum+tcp://pool.verters.com:4444 -u djm34t.user -p password --gpu-platform 2 
@rem sgminer.exe --no-submit-stale --kernel pluck -o stratum+tcp://sup.suprnova.cc:7777  -u djm34.2 -p password   --gpu-platform 2 --thread-concurrency 8192 -w 4  -I 12
@rem sgminer.exe --no-submit-stale --kernel yescrypt -o stratum+tcp://mine2.bsty.nonce-pool.com:4095 -u djm34.1 -p password  --gpu-platform 1 -w 32 --thread-concurrency 512 --text-only --debug
sgminer.exe --no-submit-stale --kernel yescrypt -o stratum+tcp://mine2.bsty.nonce-pool.com:4095 -u djm34.1 -p password  --gpu-platform 1 -w 8 --thread-concurrency 1024 -I 9 

@rem sgminer.exe --no-submit-stale --kernel yescrypt-multi -o stratum+tcp://mine2.bsty.nonce-pool.com:4095 -u djm34.1 -p password  --gpu-platform 0 -w 4   -g 2 
pause