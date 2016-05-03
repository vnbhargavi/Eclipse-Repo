trigger acc_ins on Account (after insert) {
  Account[] act = Trigger.new; 
        
       Acc_Sec.abcd(act);  
}