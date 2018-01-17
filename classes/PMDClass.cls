public class PMDClass {
    //final Integer MAX_MOVEMENTS_PER_TRAVEL = 1;

//// Must be global so custom JAVASCRIPT button can call it!!!  
//// Peter: TODO Do we still have that button? Why not take an Apex butto?
//global static Map<Id,Set<Date>> GetDatesMap(Date start, Date end, Date firstHotel, List<Id> ids, User usr) {
    //Map<Id, Set<Date>> themap = new Map<Id, Set<Date>>();
    //Set<Id> movRts = getMovRts();

    //for (Expense__c e: (List<Expense__c>)Database.query('select RecordTypeId, Departuretime__c, arrivalTime__c, MDR_TRAVEL__c,')){
        //if (themap.get(e.MDR_TRAVEL__c) != null) themap.put(e.mdr_Travel__c, new Set<Date>());

        //Set<Date> expDts = themap.get(t);
        //if(ExpenseType.isRentalVehicle(e)){
            //List<LongDistanceRide__c> rides = [SELECT dtm_departuretime__c, dtm_arrivalTime__c, chk_RoundTrip__c, dtm_ReturnDepot__c
                                               //from Long_Distance_Ride__c where  mdr_retal_vehicle__c=: e.id];
            //for(LongDistanceRide__c r:rides)
            //{   epxDts.add(r.dtm_DepartureTime__c.date());
                //expDts.add(r.dtm_ArrivalTime__c.date());

                //TEst();


                //if(r.size() > MAX_MOVEMENTS_PER_TRAVEL || flag == true)
                    //break;// Had to add it for Bugfix 3452354
                //else if(r.chk_RoundTrip__c) {
                    //expDts.add(r.drm_ReturnDeparture__c.date());
                    //expDts.add(r.drm_ReturnArrival__c.date());
                //}

                //else if(!e.chk_RoundTrip__c)
                        //expDts.add(e.dtm_ReturnArrival__c.date());
        //}
    //}

//}

//}

//global static void TEst() {
    //List<LongDistanceRide__c> rides = [SELECT dtm_departuretime__c, dtm_arrivalTime__c, chk_RoundTrip__c, dtm_ReturnDepot__c
                                               //from Long_Distance_Ride__c];
//}

}