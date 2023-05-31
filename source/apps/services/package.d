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
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.services.controllers;
  import apps.services.helpers;
  import apps.services.routers;
  import apps.services.tests;
  import apps.services.views;
}

static this() {
  AppRegistry.register("apps.services",  
    App
    .name("servicesApp")
    .rootPath("/apps/services")
    .addRoute(Route("", HTTPMethod.GET, IndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, IndexPageController)));
}