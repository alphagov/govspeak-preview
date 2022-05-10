# Govspeak preview

A tiny app for previewing and converting [Govspeak](https://github.com/alphagov/govspeak).

Govspeak is a Markdown-derived mark-up language used by [GOV.UK](https://github.com/alphagov).

## Updating the guide

You can find the source files for the guide at [guide.md](app/assets/markdown/guide.md)

This guide is for GOV.UK content designers based at GDS.

It shows how Govspeak looks on the GOV.UK website in mainstream formats.

The guide also says when to use the various types of Govspeak, such as the different callout styles.

## Deployment

It's hosted on [Heroku](http://govspeak-preview.herokuapp.com/), and automatically deployed when `main` changes.

## Running locally

```
./startup.sh --live
```
