# Lime Suite

Lime Suite is a collection of software supporting several hardware platforms 
based on the LMS7002M transceiver RFIC, such as LimeSDR family. It contains the
following components:
* **LimeSuite library** that provides C-style API;
* **LimeSuiteGUI** application for accessing low-level chip and board settings, displaying FFT, updating firmware and more;
* **SoapyLMS** plugin for LimeSDR support in SoapySDR;
* **LimeUtil** command line tool for listing LimeSDR devices and updating firmware;
* **LimeQuickTest** application to run some basic tests;
* **LimeSuite API examples** (basicRX, basicTX, singleRX, dualRXTX, gpio_example);
* **Octave plugin** (provides some basic functionality only);

## Build Status

- Travis: [![Travis Build Status](https://travis-ci.org/myriadrf/LimeSuite.svg?branch=master)](https://travis-ci.org/myriadrf/LimeSuite)
- AppVeyor: [![AppVeyor Build status](https://ci.appveyor.com/api/projects/status/stwfarvq0j01qyaq)](https://ci.appveyor.com/project/myriadrf/limesuite)

## Documentation

Find build and install instructions for Lime Suite on the wiki:

* http://wiki.myriadrf.org/Lime_Suite

Information about LimeSDR boards:

* https://wiki.myriadrf.org/LimeSDR

## Help and support

The discourse forum is a good way to find help and discuss topics:

* https://discourse.myriadrf.org/

## CI/CD

This project is based on Pantavisor component CI template. Check out its readme document [here](https://gitlab.com/pantacor/ci/component-ci-template).
