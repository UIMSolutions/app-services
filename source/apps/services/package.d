module apps.services;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.srv.controllers;
  import apps.srv.helpers;
  import apps.srv.routers;
  import apps.srv.tests;
  import apps.srv.views;
}

DApp servicesApp;
static this() {
  servicesApp = App
    .name("servicesApp")
    .rootPath("/apps/services")
    .addRoute(Route("", HTTPMethod.GET, SRVIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, SRVIndexPageController));
}