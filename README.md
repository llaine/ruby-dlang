# ruby-dlang

# Fast blank example

Comparison between `blank` from ActiveRecord 
and the raw D one. 

- Ruby code located in `d.rb`
- benchmark located in `benchmark.rb`
- D code located in source folder

D application has been compiled using `dub build --build=release`

### Results

```
Warming up --------------------------------------
            blank? D   174.206k i/100ms
         blank? Ruby   176.620k i/100ms
Calculating -------------------------------------
            blank? D      2.790M (± 1.5%) i/s -     14.111M in   5.059450s
         blank? Ruby      2.698M (± 1.4%) i/s -     13.600M in   5.041477s

Comparison:
            blank? D:  2789669.1 i/s
         blank? Ruby:  2698155.7 i/s - 1.03x slower
```

