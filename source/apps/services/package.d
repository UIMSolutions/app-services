module apps.services;

mixin(ImportPhobos!());

public { // required uim libraries
  import uim.core;
  import uim.oop;
  import uim.apps;
}

public { // admin-services libraries
  import apps.services.controllers;
  import apps.services.views;
}
