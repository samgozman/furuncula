; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Created: Mon Jan 07 2019 20:35:23 GMT+0300 (MSK)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 210 °C
; Bed Temperature = 0 °C
; Retraction Distance = 5 mm
; Layer Height = 0.2 mm
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 200 mm
; Bed Size Y = 200 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4200 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 3000 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 10
; Ending Value Factor = 120
; Factor Stepping = 5
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 135 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
M104 S210 ; set nozzle temperature but do not wait
M190 S0 ; set bed temperature and wait
M109 S210 ; block waiting for nozzle temp
G28 ; home all axes with heated bed
G21 ; set units to millimeters
M204 P500 ; set acceleration
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
G92 E0 ; reset extruder distance
G1 X100 Y100 F7200 ; move to start
G1 Z0.2 F1200 ; move to layer height
;
; prime nozzle
;
G1 X51 Y32.5 F7200 ; move to start
G1 X51 Y167.5 E13.4704 F1800 ; print line
G1 X51.72 Y167.5 F7200 ; move to start
G1 X51.72 Y32.5 E13.4704 F1800 ; print line
G1 E-5 F3000 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X61 Y32.5 F7200 ; move to start
M900 K10 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y32.5 E0.7982 F1200 ; print line
G1 X121 Y32.5 E1.5965 F4200 ; print line
G1 X141 Y32.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y37.5 F7200 ; move to start
M900 K15 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y37.5 E0.7982 F1200 ; print line
G1 X121 Y37.5 E1.5965 F4200 ; print line
G1 X141 Y37.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y42.5 F7200 ; move to start
M900 K20 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y42.5 E0.7982 F1200 ; print line
G1 X121 Y42.5 E1.5965 F4200 ; print line
G1 X141 Y42.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y47.5 F7200 ; move to start
M900 K25 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y47.5 E0.7982 F1200 ; print line
G1 X121 Y47.5 E1.5965 F4200 ; print line
G1 X141 Y47.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y52.5 F7200 ; move to start
M900 K30 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y52.5 E0.7982 F1200 ; print line
G1 X121 Y52.5 E1.5965 F4200 ; print line
G1 X141 Y52.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y57.5 F7200 ; move to start
M900 K35 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y57.5 E0.7982 F1200 ; print line
G1 X121 Y57.5 E1.5965 F4200 ; print line
G1 X141 Y57.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y62.5 F7200 ; move to start
M900 K40 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y62.5 E0.7982 F1200 ; print line
G1 X121 Y62.5 E1.5965 F4200 ; print line
G1 X141 Y62.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y67.5 F7200 ; move to start
M900 K45 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y67.5 E0.7982 F1200 ; print line
G1 X121 Y67.5 E1.5965 F4200 ; print line
G1 X141 Y67.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y72.5 F7200 ; move to start
M900 K50 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y72.5 E0.7982 F1200 ; print line
G1 X121 Y72.5 E1.5965 F4200 ; print line
G1 X141 Y72.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y77.5 F7200 ; move to start
M900 K55 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y77.5 E0.7982 F1200 ; print line
G1 X121 Y77.5 E1.5965 F4200 ; print line
G1 X141 Y77.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y82.5 F7200 ; move to start
M900 K60 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y82.5 E0.7982 F1200 ; print line
G1 X121 Y82.5 E1.5965 F4200 ; print line
G1 X141 Y82.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y87.5 F7200 ; move to start
M900 K65 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y87.5 E0.7982 F1200 ; print line
G1 X121 Y87.5 E1.5965 F4200 ; print line
G1 X141 Y87.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y92.5 F7200 ; move to start
M900 K70 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y92.5 E0.7982 F1200 ; print line
G1 X121 Y92.5 E1.5965 F4200 ; print line
G1 X141 Y92.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y97.5 F7200 ; move to start
M900 K75 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y97.5 E0.7982 F1200 ; print line
G1 X121 Y97.5 E1.5965 F4200 ; print line
G1 X141 Y97.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y102.5 F7200 ; move to start
M900 K80 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y102.5 E0.7982 F1200 ; print line
G1 X121 Y102.5 E1.5965 F4200 ; print line
G1 X141 Y102.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y107.5 F7200 ; move to start
M900 K85 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y107.5 E0.7982 F1200 ; print line
G1 X121 Y107.5 E1.5965 F4200 ; print line
G1 X141 Y107.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y112.5 F7200 ; move to start
M900 K90 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y112.5 E0.7982 F1200 ; print line
G1 X121 Y112.5 E1.5965 F4200 ; print line
G1 X141 Y112.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y117.5 F7200 ; move to start
M900 K95 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y117.5 E0.7982 F1200 ; print line
G1 X121 Y117.5 E1.5965 F4200 ; print line
G1 X141 Y117.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y122.5 F7200 ; move to start
M900 K100 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y122.5 E0.7982 F1200 ; print line
G1 X121 Y122.5 E1.5965 F4200 ; print line
G1 X141 Y122.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y127.5 F7200 ; move to start
M900 K105 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y127.5 E0.7982 F1200 ; print line
G1 X121 Y127.5 E1.5965 F4200 ; print line
G1 X141 Y127.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y132.5 F7200 ; move to start
M900 K110 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y132.5 E0.7982 F1200 ; print line
G1 X121 Y132.5 E1.5965 F4200 ; print line
G1 X141 Y132.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y137.5 F7200 ; move to start
M900 K115 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y137.5 E0.7982 F1200 ; print line
G1 X121 Y137.5 E1.5965 F4200 ; print line
G1 X141 Y137.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X61 Y142.5 F7200 ; move to start
M900 K120 ; set K-factor
G1 E5 F3000 ; un-retract
G1 X81 Y142.5 E0.7982 F1200 ; print line
G1 X121 Y142.5 E1.5965 F4200 ; print line
G1 X141 Y142.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
;
; mark the test area for reference
;
M900 K0 ; set K-factor 0
G1 X81 Y147.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X81 Y167.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 X121 Y147.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X121 Y167.5 E0.7982 F1200 ; print line
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X143 Y30.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X143 Y32.5 E0.0798 F1200 ; 1
G1 X143 Y34.5 E0.0798 F1200 ; 1
G1 E-5 F3000 ; retract
G1 X144 Y30.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X146 Y30.5 E0.0798 F1200 ; 0
G1 X146 Y32.5 E0.0798 F1200 ; 0
G1 X146 Y34.5 E0.0798 F1200 ; 0
G1 X144 Y34.5 E0.0798 F1200 ; 0
G1 X144 Y32.5 E0.0798 F1200 ; 0
G1 X144 Y30.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X143 Y40.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X143 Y42.5 F7200 ; move to start
G1 X143 Y44.5 F7200 ; move to start
G1 X145 Y44.5 E0.0798 F1200 ; 2
G1 X145 Y42.5 E0.0798 F1200 ; 2
G1 X143 Y42.5 E0.0798 F1200 ; 2
G1 X143 Y40.5 E0.0798 F1200 ; 2
G1 X145 Y40.5 E0.0798 F1200 ; 2
G1 E-5 F3000 ; retract
G1 X146 Y40.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X148 Y40.5 E0.0798 F1200 ; 0
G1 X148 Y42.5 E0.0798 F1200 ; 0
G1 X148 Y44.5 E0.0798 F1200 ; 0
G1 X146 Y44.5 E0.0798 F1200 ; 0
G1 X146 Y42.5 E0.0798 F1200 ; 0
G1 X146 Y40.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X143 Y50.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X143 Y52.5 F7200 ; move to start
G1 X143 Y54.5 F7200 ; move to start
G1 X145 Y54.5 E0.0798 F1200 ; 3
G1 X145 Y52.5 E0.0798 F1200 ; 3
G1 X145 Y50.5 E0.0798 F1200 ; 3
G1 X143 Y50.5 E0.0798 F1200 ; 3
G1 X143 Y52.5 F7200 ; move to start
G1 X145 Y52.5 E0.0798 F1200 ; 3
G1 E-5 F3000 ; retract
G1 X146 Y50.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X148 Y50.5 E0.0798 F1200 ; 0
G1 X148 Y52.5 E0.0798 F1200 ; 0
G1 X148 Y54.5 E0.0798 F1200 ; 0
G1 X146 Y54.5 E0.0798 F1200 ; 0
G1 X146 Y52.5 E0.0798 F1200 ; 0
G1 X146 Y50.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X143 Y60.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X143 Y62.5 F7200 ; move to start
G1 X143 Y64.5 F7200 ; move to start
G1 X143 Y62.5 E0.0798 F1200 ; 4
G1 X145 Y62.5 E0.0798 F1200 ; 4
G1 X145 Y64.5 F7200 ; move to start
G1 X145 Y62.5 E0.0798 F1200 ; 4
G1 X145 Y60.5 E0.0798 F1200 ; 4
G1 E-5 F3000 ; retract
G1 X146 Y60.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X148 Y60.5 E0.0798 F1200 ; 0
G1 X148 Y62.5 E0.0798 F1200 ; 0
G1 X148 Y64.5 E0.0798 F1200 ; 0
G1 X146 Y64.5 E0.0798 F1200 ; 0
G1 X146 Y62.5 E0.0798 F1200 ; 0
G1 X146 Y60.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X143 Y70.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X145 Y70.5 E0.0798 F1200 ; 5
G1 X145 Y72.5 E0.0798 F1200 ; 5
G1 X143 Y72.5 E0.0798 F1200 ; 5
G1 X143 Y74.5 E0.0798 F1200 ; 5
G1 X145 Y74.5 E0.0798 F1200 ; 5
G1 E-5 F3000 ; retract
G1 X146 Y70.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X148 Y70.5 E0.0798 F1200 ; 0
G1 X148 Y72.5 E0.0798 F1200 ; 0
G1 X148 Y74.5 E0.0798 F1200 ; 0
G1 X146 Y74.5 E0.0798 F1200 ; 0
G1 X146 Y72.5 E0.0798 F1200 ; 0
G1 X146 Y70.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X143 Y80.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X143 Y82.5 F7200 ; move to start
G1 X145 Y82.5 E0.0798 F1200 ; 6
G1 X145 Y80.5 E0.0798 F1200 ; 6
G1 X143 Y80.5 E0.0798 F1200 ; 6
G1 X143 Y82.5 E0.0798 F1200 ; 6
G1 X143 Y84.5 E0.0798 F1200 ; 6
G1 X145 Y84.5 E0.0798 F1200 ; 6
G1 E-5 F3000 ; retract
G1 X146 Y80.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X148 Y80.5 E0.0798 F1200 ; 0
G1 X148 Y82.5 E0.0798 F1200 ; 0
G1 X148 Y84.5 E0.0798 F1200 ; 0
G1 X146 Y84.5 E0.0798 F1200 ; 0
G1 X146 Y82.5 E0.0798 F1200 ; 0
G1 X146 Y80.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X143 Y90.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X143 Y92.5 F7200 ; move to start
G1 X143 Y94.5 F7200 ; move to start
G1 X145 Y94.5 E0.0798 F1200 ; 7
G1 X145 Y92.5 E0.0798 F1200 ; 7
G1 X145 Y90.5 E0.0798 F1200 ; 7
G1 E-5 F3000 ; retract
G1 X146 Y90.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X148 Y90.5 E0.0798 F1200 ; 0
G1 X148 Y92.5 E0.0798 F1200 ; 0
G1 X148 Y94.5 E0.0798 F1200 ; 0
G1 X146 Y94.5 E0.0798 F1200 ; 0
G1 X146 Y92.5 E0.0798 F1200 ; 0
G1 X146 Y90.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X143 Y100.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X143 Y102.5 F7200 ; move to start
G1 X145 Y102.5 E0.0798 F1200 ; 8
G1 X145 Y100.5 E0.0798 F1200 ; 8
G1 X143 Y100.5 E0.0798 F1200 ; 8
G1 X143 Y102.5 E0.0798 F1200 ; 8
G1 X143 Y104.5 E0.0798 F1200 ; 8
G1 X145 Y104.5 E0.0798 F1200 ; 8
G1 X145 Y102.5 E0.0798 F1200 ; 8
G1 E-5 F3000 ; retract
G1 X146 Y100.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X148 Y100.5 E0.0798 F1200 ; 0
G1 X148 Y102.5 E0.0798 F1200 ; 0
G1 X148 Y104.5 E0.0798 F1200 ; 0
G1 X146 Y104.5 E0.0798 F1200 ; 0
G1 X146 Y102.5 E0.0798 F1200 ; 0
G1 X146 Y100.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X143 Y110.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X145 Y110.5 E0.0798 F1200 ; 9
G1 X145 Y112.5 E0.0798 F1200 ; 9
G1 X143 Y112.5 E0.0798 F1200 ; 9
G1 X143 Y114.5 E0.0798 F1200 ; 9
G1 X145 Y114.5 E0.0798 F1200 ; 9
G1 X145 Y112.5 E0.0798 F1200 ; 9
G1 E-5 F3000 ; retract
G1 X146 Y110.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X148 Y110.5 E0.0798 F1200 ; 0
G1 X148 Y112.5 E0.0798 F1200 ; 0
G1 X148 Y114.5 E0.0798 F1200 ; 0
G1 X146 Y114.5 E0.0798 F1200 ; 0
G1 X146 Y112.5 E0.0798 F1200 ; 0
G1 X146 Y110.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X143 Y120.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X143 Y122.5 E0.0798 F1200 ; 1
G1 X143 Y124.5 E0.0798 F1200 ; 1
G1 E-5 F3000 ; retract
G1 X144 Y120.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X146 Y120.5 E0.0798 F1200 ; 0
G1 X146 Y122.5 E0.0798 F1200 ; 0
G1 X146 Y124.5 E0.0798 F1200 ; 0
G1 X144 Y124.5 E0.0798 F1200 ; 0
G1 X144 Y122.5 E0.0798 F1200 ; 0
G1 X144 Y120.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 X147 Y120.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X149 Y120.5 E0.0798 F1200 ; 0
G1 X149 Y122.5 E0.0798 F1200 ; 0
G1 X149 Y124.5 E0.0798 F1200 ; 0
G1 X147 Y124.5 E0.0798 F1200 ; 0
G1 X147 Y122.5 E0.0798 F1200 ; 0
G1 X147 Y120.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X143 Y130.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X143 Y132.5 E0.0798 F1200 ; 1
G1 X143 Y134.5 E0.0798 F1200 ; 1
G1 E-5 F3000 ; retract
G1 X144 Y130.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X144 Y132.5 E0.0798 F1200 ; 1
G1 X144 Y134.5 E0.0798 F1200 ; 1
G1 E-5 F3000 ; retract
G1 X145 Y130.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X147 Y130.5 E0.0798 F1200 ; 0
G1 X147 Y132.5 E0.0798 F1200 ; 0
G1 X147 Y134.5 E0.0798 F1200 ; 0
G1 X145 Y134.5 E0.0798 F1200 ; 0
G1 X145 Y132.5 E0.0798 F1200 ; 0
G1 X145 Y130.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
G1 X143 Y140.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F3000 ; un-retract
G1 X143 Y142.5 E0.0798 F1200 ; 1
G1 X143 Y144.5 E0.0798 F1200 ; 1
G1 E-5 F3000 ; retract
G1 X144 Y140.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X144 Y142.5 F7200 ; move to start
G1 X144 Y144.5 F7200 ; move to start
G1 X146 Y144.5 E0.0798 F1200 ; 2
G1 X146 Y142.5 E0.0798 F1200 ; 2
G1 X144 Y142.5 E0.0798 F1200 ; 2
G1 X144 Y140.5 E0.0798 F1200 ; 2
G1 X146 Y140.5 E0.0798 F1200 ; 2
G1 E-5 F3000 ; retract
G1 X147 Y140.5 F7200 ; move to start
G1 E5 F3000 ; un-retract
G1 X149 Y140.5 E0.0798 F1200 ; 0
G1 X149 Y142.5 E0.0798 F1200 ; 0
G1 X149 Y144.5 E0.0798 F1200 ; 0
G1 X147 Y144.5 E0.0798 F1200 ; 0
G1 X147 Y142.5 E0.0798 F1200 ; 0
G1 X147 Y140.5 E0.0798 F1200 ; 0
G1 E-5 F3000 ; retract
G1 Z0.3 F1200 ; zHop
;
; finish
;
M104 S0 ; turn off hotend
M140 S0 ; turn off bed
G1 Z30 X200 Y200 F7200 ; move away from the print
M84 ; disable motors
M502 ; resets parameters from ROM
M501 ; resets parameters from EEPROM
;