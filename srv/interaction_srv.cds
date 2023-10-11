using app.interactions from '../db/interactions';
using V_INTERACTION from '../db/interactions';

@requires: 'authenticated-user'
service CatalogService {

  entity Interactions_Header as projection on interactions.Interactions_Header;

  @requires: 'Admin'
  @restrict: [{
    grant: 'READ',
    where: 'LANGU = ''DE'''
  }]
  entity Interactions_Items  as projection on interactions.Interactions_Items;

  @readonly
  entity V_Interaction       as projection on V_INTERACTION;
}
