/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.services.controllers.pages.error;

import apps.services;
@safe:

class DSRVErrorPageController : DAPPPageController {
  mixin(ControllerThis!("SRVErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(SRVErrorView(this));
  }
}
mixin(ControllerCalls!("SRVErrorPageController"));
