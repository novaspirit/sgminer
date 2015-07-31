rem setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
del *.bin
@rem sgminer.exe 
@rem pause
@rem sgminer.exe --no-submit-stale --kernel Lyra2RE -o stratum+tcp://pool.verters.com:4444 -u djm34t.user -p password --gpu-platform 1  -I 17  -g 16 -w 32 
sgminer.exe --kernel Lyra2REv2 -o  http://127.0.0.1:7785/  -u Dominique -p MyPass --gpu-platform 1   -I 18  -g 8 -w 32 
@rem sgminer.exe --no-submit-stale --kernel pluck -o stratum+tcp://sup.suprnova.cc:7777  -u djm34.2 -p password   --gpu-platform 2 --thread-concurrency 8192 -w 4  -I 12
@rem sgminer.exe --no-submit-stale --kernel yescrypt -o stratum+tcp://mine2.bsty.nonce-pool.com:4095 -u djm34.1 -p password  --gpu-platform 1 -w 32 --thread-concurrency 512 --text-only --debug
@rem sgminer.exe --no-submit-stale --kernel yescrypt -o stratum+tcp://mine2.bsty.nonce-pool.com:4095 -u djm34.1 -p password  --gpu-platform 1 -w 8 --thread-concurrency 1024 -I 9 

@rem sgminer.exe --no-submit-stale --kernel nscrypto -o http://127.0.0.1:9989/  -u dom -p password    --gpu-platform 1    -I 20
@rem sgminer.exe --no-submit-stale --kernel nscrypto -o stratum+tcp://drop.suprnova.cc:7890  -u djm34.1 -p password   --gpu-platform 0 -I 18 --device 0 --remove-disabled --text-only --debug

pause