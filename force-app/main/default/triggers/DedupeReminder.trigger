trigger DedupeReminder on Account (after insert) {

  for (Account acc : Trigger.new) {
    
    Case c = new Case();
    c.Subject = 'Dedupe this Account';
    c.OwnerId = '0055Y00000DX0YtQAL';
    c.AccountId = acc.Id;
    insert c;
    // Explicit save
  }
}