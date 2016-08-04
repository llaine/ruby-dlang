# ruby-dlang

Creating Ruby extensions using D 


# How to 
```
# Fetching ruby deps
$ bundle install
# Compiling D app
$ dub
$ ruby user.rb
```


# Fast blank example

Comparison between `blank` from ActiveRecord 
and the raw D one. 

- Ruby code located in `app.rb`
- benchmark located in `benchmark.rb`
- D code located in source folder

### Results

```
Warming up --------------------------------------
        fast_blank D   144.295k i/100ms
     fast_blank Ruby   176.332k i/100ms
Calculating -------------------------------------
        fast_blank D      2.501M (± 1.3%) i/s -     12.554M in   5.021058s
     fast_blank Ruby      2.773M (± 0.8%) i/s -     13.930M in   5.023734s

Comparison:
     fast_blank Ruby:  2773053.9 i/s
        fast_blank D:  2500605.5 i/s - 1.11x slower
```

