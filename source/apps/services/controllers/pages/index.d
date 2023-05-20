/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.services.controllers.pages.index;

import apps.services;
@safe:

class DSRVIndexPageController : DAPPPageController {
  mixin(ControllerThis!("SRVIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(SRVIndexView(this));
  }
}
mixin(ControllerCalls!("SRVIndexPageController"));
