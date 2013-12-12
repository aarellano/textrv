Textual Requirements Analysis and Validation
===

## Description
*TextReq Validation* is an experimental tool to extract meaningful information from textual descriptions of system requirements. If we analyze them, we can identify whether there are missing properties, or contradictions, or even visualize the requirements to visually verify the whole system.

This is a [Ruby on Rails](http://rubyonrails.org/) web application, where the models and views of the tools are created and managed, but it is heavily *seasoned* by [NLTK](http://nltk.org/), a powerful *Natural Language Toolkit for building Python programs to work with human language data*.

### Models
* **Systems**:
* **Requirements**:
* **Models**:
* **Entities**:
* **Properties**:

### NLTK scripts

## Installing *TextReq*

### Requirements
* Ruby > 1.9.0 (if you haven't installed [rbenv](https://github.com/sstephenson/rbenv) yet, do it now. And do yourself another favor and install [rbenv-vars](https://github.com/sstephenson/rbenv-vars))
* [Bundler](http://bundler.io/)
* Python
* MySql

### Installation
In order to run the development environment, you'll need to create a local MySql database named *textrv_dev*. Then just follow the following steps:

    git clone https://github.com/aarellano/textrv
    cd textrv
    bundle install
    rake db:migrate
    rails start
