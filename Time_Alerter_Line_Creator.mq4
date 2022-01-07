//+------------------------------------------------------------------+
//|                                    Time_Alerter_Line_Creator.mq4 |
//|                                                         Enzo     |
//|                                 https://github.com/lorenzosaldana|
//+------------------------------------------------------------------+
#property copyright "Enzo"

#property indicator_chart_window

extern int Hour_Num = 4;
extern int Minute_Num = 0;
extern color Line_Color = White;
extern double Line_Style = STYLE_DASHDOTDOT;
int SoundCount = 0;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
{
//---- indicators
//----
   return(0);
}
//+------------------------------------------------------------------+
//| Custom indicator deinitialization function                       |
//+------------------------------------------------------------------+
int deinit()
{
//----
   int ObjectCount = ObjectsTotal();
   for (int i=ObjectCount-1; i>=0; i--)
   {
      if(StringFind(ObjectName(i),"Time_vLine-") != -1)
      {
         ObjectDelete(ObjectName(i));
      }  
   }
//----
   return(0);
}
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
{
   int Counted_bars=IndicatorCounted(); // Number of counted bars   
   int i=Bars-Counted_bars-1;           // Index of the first uncounted   
   
   while(i>=0)                      // Loop for uncounted bars     
   {  
      if(TimeHour(Time[i]) == Hour_Num && TimeMinute(Time[i]) == Minute_Num)
      {
         if (ObjectFind("Time_vLine-"+Time[i]) != 0)
         {
            ObjectCreate( "Time_vLine-"+Time[i], OBJ_VLINE, 0, Time[i], 0 );
            ObjectSet( "Time_vLine-"+Time[i], OBJPROP_COLOR, Line_Color );
            ObjectSet("Time_vLine-"+Time[i], OBJPROP_STYLE, Line_Style);     
         }         
      }
     
      
      
      i--;
   }
      if (Hour() == Hour_Num && SoundCount<1)
      {
      PlaySound("stops.wav");
      SoundCount++; 
      }
      if(Hour() == Hour_Num + 1 && SoundCount==1)
      {
      SoundCount = SoundCount - 1;
      }
//----
   return(0);
}
//+------------------------------------------------------------------+