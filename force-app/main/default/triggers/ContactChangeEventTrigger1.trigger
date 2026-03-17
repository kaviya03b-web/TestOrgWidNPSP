trigger ContactChangeEventTrigger1 on ContactChangeEvent (after insert) {

    for (ContactChangeEvent eventRecord : Trigger.New) {

        EventBus.ChangeEventHeader header = eventRecord.ChangeEventHeader;

        System.debug('Change Type: ' + header.changeType);
        System.debug('Record Ids: ' + header.recordIds);
        System.debug('Changed Fields: ' + header.changedFields);
    }

}