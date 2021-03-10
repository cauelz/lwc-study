trigger AppleWatch on Opportunity (after insert) {

  for (Opportunity opp : Trigger.new) {

    Task t        = new Task();
    t.Subject     = 'Apple Watch Promo';
    t.Description = 'Send them one ASAP';
    t.Priority    = 'High'; //is a picklist but we use strings to populate
    t.WhatId      = opp.Id;
    insert t;
  }

  /*
  When to use Before | After Triggers:

  Before:
  1- No need to explicitly save your work, the save event is coming
  2 - System level fields are not available, they're not populated

  After:
  1- System fields now available:
    Record ID
    Created Date
    Last Modified Date (update)
  2- Need to explicitly save your changes
  3- Potentially create a infinite loop
  */
}