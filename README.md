# Time_Alerter_Line_Creator
An MT4 indicator that will draw a vertical line and sound an alert depending on user input.

## How To Use: 
1. Add the Time_Alerter_Line_Creator.ex4 file to your MT4's Indicator folder.
2. Refresh the navigator window or restart your MT4 program.
3. From the navigator window drag and drop "Time_Alerter_Line_Creator" to your desired chart.
4. Edit your preferences in the Indicator's Input tab.

## Input Parameters
**Note: The input parameters follow your broker's time. Your local time may not be the same as that of your broker's.**

-  Hour_Num set the your prefered time in hours. Default value is 4.
- Minute_Num set your preferred time in minutes. Defult value is 0.
- Line_Color set your preferred color for the vertical line. Default color is white.
- Line_Style set your preferred line style. Default style set to 4(DashDotDot).
  - **Line_Styles:**
    - 0 = Solid
    - 1 = Dash
    - 2 = Dot
    - 3 = DashDot
    - 4 = DashDotDot
  
***The source code of this custom indicator can be found in the Time_Alerter_Line_Creator.mq4 file. Feel free to make edits to the code.***
