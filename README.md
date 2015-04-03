# Rails View Benchmarks

This is currently a very powerful, but wildly underdocumented, package of Rails view benchmarks.
It contains a number of benchmarks, implemented for various rendering engines, along with code that
knows how to configure and invoke those benchmarks under different configurations of each engine.

Most notably, this package contains a view benchmark, `place_page`, that seems to be many, many
times larger and more realistic (_i.e._, representative of the kind of real site that actually
cares about view performance) than any other view benchmarks available. It also contains a series
of microbenchmarks that can be used to easily measure the performance impact of using certain features
in a templating engine (_e.g._, moving view code into a partial, calling a Rails helper, invoking
the Rails translation mechanism, or so on).

As a result, you can use it to easily measure the relative performance of various rendering engines,
as well as use it to determine which operations in a rendering engine are slow or fast.

Note that this package runs each benchmark in a separate process, using the
[`oop_rails_server`](https://github.com/ageweke/oop_rails_server) gem. It’s careful to always run with
`RAILS_ENV=production`, warm up the system beforehand (by rendering the view a few times before
benchmarking anything), and only measure the performance of the view itself (by getting rid of Rails’
“double render” prevention, and just rendering the view over and over, rather than running the entire
controller action). It also measures the number of objects allocated during a view render, which
contributes significantly to performance as it increases the amount of work the garbage collector must
later do.

This package was developed concurrently with [`fortitude`](https://github.com/ageweke/fortitude),
and is part of why Fortitude is so fast — it was benchmarked against real-world examples from the
very beginning, and constantly benchmarked to make sure it only ever got faster, not slower.

## Current Status

Currently, this package is reliable and should be fairly robust, but is woefully underdocumented.
As a rough guide to what’s where:

* You use it by running `bin/run-benchmarks <yaml-file>`, where `yaml-file` is the path to a YAML file
  describing the benchmarks you want to run.
* There is a `benchmark.yml` file checked in at the root that runs a whole suite of benchmarks against
  many rendering engines. You can use it as a model of what to run.
* In the codebase:
  * The `benchmarks` directory defines the benchmarks themselves — which is typically just the contents
    of the controller action for each benchmark, since the view code will be different depending on
    the templating engine.
  * `configurators` are smart objects that define methods that can be used to easily configure engines
    and benchmarks by, _e.g._, splatting a file into place in `config/initializers` that adjusts
    an engine’s settings.
  * `instances` is divided up by rendering engine; in each subdirectory an object is defined that
    knows how to render a particular benchmark with a particular rendering engine. (There are also some
    superclasses in here that DRY up the logic for engines that use similar views — for example,
    [`erector`](https://github.com/erector/erector) and [`fortitude`](https://github.com/ageweke/fortitude)
    use nearly the same view structure.) Note that some instances pull out view code into external templates,
    which live underneath the `tmpl` root-level directory.
  * `templating_engines` contains one object per templating engine; these objects know how to configure
    a templating engine with certain properties (for example, whether or not to pretty-print/format the
    resulting HTML) based on what’s in `benchmark.yml`.
* The `tmpl` top-level directory has files in it that end up being populated into a Rails server’s tree
  when running benchmarks (depending on the benchmark and templating engine being used).
* The `tmp` directory gets created when benchmarks are run, and populated with subdirectories where the
  actual Rails installations used for each benchmark are contained.
* The `results` directory gets populated with a timestamped directory whenever you run benchmarks;
  each one ends up containing the CSV that is the result of those benchmarks (populated as each
  benchmark is run), as well as a directory containing the actual resulting HTML, too.

I will be more than happy to help out anyone who wants to work with or modify this package, and
eventually I intend to fully document it — once I have time.
