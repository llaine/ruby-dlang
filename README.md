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
       D tiny string   205.739k i/100ms
    Ruby tiny string   175.235k i/100ms
        D big string   200.534k i/100ms
     Ruby big string   173.742k i/100ms
 D really big string   190.147k i/100ms
Ruby really big string
                       164.673k i/100ms
Calculating -------------------------------------
       D tiny string      3.439M (± 8.8%) i/s -     17.076M in   5.014436s
    Ruby tiny string      2.390M (±12.7%) i/s -     11.741M in   4.999998s
        D big string      3.063M (±14.0%) i/s -     15.040M in   5.028997s
     Ruby big string      2.341M (±13.9%) i/s -     11.467M in   5.013994s
 D really big string      2.904M (±10.6%) i/s -     14.451M in   5.045024s
Ruby really big string
                          2.546M (± 7.3%) i/s -     12.680M in   5.011903s

Comparison:
       D tiny string:  3438699.4 i/s
        D big string:  3063441.8 i/s - same-ish: difference falls within error
 D really big string:  2903722.3 i/s - same-ish: difference falls within error
Ruby really big string:  2545678.7 i/s - 1.35x slower
    Ruby tiny string:  2389517.8 i/s - 1.44x slower
     Ruby big string:  2340881.6 i/s - 1.47x slower


```

