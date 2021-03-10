trigger HelloWorld on Lead (before update) {

  for (Lead myLead : Trigger.new) {
    myLead.FirstName = 'Hello';
    myLead.LastName  = 'World';
  }

  // before insert
  // before update
  // before delete
  // after insert
  // after update
  // after delete
  // after undelete

  /*
  When do we need a trigger Looop?

  1- Users edit in bulk
  2- Data Loader
  3- Bulk Code Updates

  How the trigger loop works?
  200 leads in trigger per Batch

  */
}