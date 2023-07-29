module apps.services;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

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
  auto myApp =  App("servicesApp", "apps/services");

  with (myApp) {
    importTranslations;
    addControllers([
      "service.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("service.index")),
      Route("/", HTTPMethod.GET, controller("service.index"))
    );
  }

  AppRegistry.register("apps.services", myApp);
}