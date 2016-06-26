Option Compare Database
Option Explicit

' =================================
' MODULE:       mod_App_UI
' Level:        Application module
' Version:      1.04
' Description:  Application User Interface related functions & subroutines
'
' Source/date:  Bonnie Campbell, April 2015
' Revisions:    BLC, 4/30/2015 - 1.00 - initial version
'               BLC, 5/26/2015 - 1.01 - added PopulateSpeciesPriorities function from mod_Species
'               BLC, 11/19/2015 - 1.02 - added CreateEnums call to initApp
'               BLC, 4/26/2016  - 1.03 - added ClickAction() for handling various app actions
'               BLC, 6/24/2016 - 1.04 - replaced Exit_Function > Exit_Handler
' =================================

' =================================
' SUB:     PopulateInsetTitle
' Description:  Sets inset title on form
' Assumptions:
' Parameters:   frm - form holding crumb labels
'               aryCrumbs - breadcrumb array
'               separator - non-clickable value between crumbs, default = >
' Returns:      aryCrumbs - array of breadcrumb values
' Throws:       none
' References:   none
' Source/date:
'               Created 06/12/2014 blc; Last modified 06/12/2014 blc.
' Revisions:    Bonnie Campbell, June 12, 2014 - initial version
'               --------------------------------------------------------------------------------------
'               BLC, 4/21/2015 - Adapted for NCPN Invasives Reports - Species Target List tool
'                                Converted QAQC to Create, Logs to View
'               BLC, 5/26/2015 - Added error handling
' =================================
Public Sub PopulateInsetTitle(ctrl As Control, strContext As String)
On Error GoTo Err_Handler
    
    Dim strTitle As String
    
    Select Case strContext
        Case "Create" ' Create main
            strTitle = "Choose what you'd like to create"
        Case "CreateTgtLists" ' Create species target lists
            strTitle = "Create > Species Target Lists"
        Case "AddTgtArea" ' Add target areas
            strTitle = "Create > Add Target Area"
        Case "Outliers", "MissingData", "SuspectValues", "SuspectDO", "SuspectpH", "SuspectSC", "SuspectWT", "Duplicates"  ' QA/QC > Outliers etc.
            strContext = Replace(Replace(strContext, "Suspect", "Suspect "), "Missing", "Missing ")
            strTitle = "Data Validation > " & strContext
        Case "Data Validation" ' QA/QC analysis project selection
            strTitle = "Data Validation > Field > Duplicates (NFV)" '<<<<< Make this so it ties back to the selected analysis
        Case "View" ' View main
            strTitle = "View"
        Case "Reports" ' Reports main
            strTitle = "Reports"
        Case "CrewVegWalk" ' Reports > Field Crew Species List
            strTitle = "Reports > Field Crew Species List"
        Case "VegWalkByPark" ' Reports > Species List By Park
            strTitle = "Reports > Species List By Park"
        Case "TgtListAnnualSummary" ' Reports > Annual Species List Summary
            strTitle = "Reports > Annual Species List Summary"
        Case "Precision", "Effectiveness", "Bias", "Stage", "Flow" ' Reports > Precision etc.
            strTitle = "Reports > " & strContext
        Case "Export" ' Export main
            strTitle = "Export"
        Case "UtahLab" ' Exports > Utah Lab etc.
            strContext = Replace(strContext, "Lab", " Lab")
            strTitle = "Exports > " & strContext
        Case "DB Admin" ' DB Admin main
            strTitle = ""
    End Select
    
    If ctrl.ControlType = acLabel Then
        ctrl.Caption = strTitle
        If strContext <> "DbAdmin" Then
            ctrl.visible = True
        End If
    End If
    
Exit_Handler:
    Exit Sub
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - PopulateInsetTitle[mod_App_UI])"
    End Select
    Resume Exit_Handler
End Sub

' =================================
' SUB:     PopulateInstructions
' Description:  Sets form instruction strings
' Assumptions:  -
' Parameters:   strTab - tab for instruction string
' Returns:      aryCrumbs - array of breadcrumb values
' Throws:       none
' References:   none
' Source/date:
'               Created 06/12/2014 blc; Last modified 06/12/2014 blc.
' Revisions:    Bonnie Campbell, June 12, 2014 - initial version
'               --------------------------------------------------------------------------------------
'               BLC, 4/21/2015 - Adapted for NCPN Invasives Reports - Species Target List tool
'                                Converted QAQC to Create, Logs to View
'               BLC, 5/26/2015 - Added error handling
' =================================
Public Sub PopulateInstructions(ctrl As Control, strContext As String)
On Error GoTo Err_Handler
    Dim strInstructions As String
    
    'MsgBox strContext
    
    Select Case strContext
        Case "Create" ' Create main
            strInstructions = "Choose what you would like to create."
        Case "CreateTgtLists" ' Create > Species Target Lists
            strInstructions = "Choose the park and year for your list. Click 'Continue' to prepare your list."
        Case "AddTgtArea" ' Create > Add Target Area
            strInstructions = "" '"Choose the park and year for your target area. Click 'Continue' to create your area."
        Case "Outliers", "MissingData", "SuspectValues", "SuspectDO", "SuspectpH", "SuspectSC", "SuspectWT", "Duplicates" ' QA/QC main
            strInstructions = "Complete the fields to define the data set or subset you are validating. " _
                    & "Leave the fields blank if you are validating all data. Click 'Run' to validate."
        Case "View" ' View main
            strInstructions = "The view menu is currently not in use for this application."
            'strInstructions = "Log your modifications to data within the edit log. " _
            '        & "Be as complete as possible to aid others in tracing data changes."
        Case "Reports" ' Reports main
            strInstructions = "Choose the report you would like to run."
        Case "CrewVegWalk" ' Reports > Field Crew Species List
            strInstructions = "Choose the park and year for your list. Click 'Continue' to prepare your report."
        Case "VegWalkByPark" ' Reports > Species List By Park
            strInstructions = "Choose the park and year for your list. Click 'Continue' to prepare your report."
        Case "TgtListAnnualSummary"
            strInstructions = "Choose the year(s) for your list. Click 'Continue' to prepare your report." & vbCrLf & vbCrLf & _
                            "This report may take a minute to create and display. " & vbCrLf & _
                            "Calculated summary values will display once the report has finished rendering. " & vbCrLf & vbCrLf & _
                            "Your patience is appreciated."
        Case "Precision", "Effectiveness", "Bias", "Stage", "Flow" ' Reports > Precision etc.
            strInstructions = "Complete the fields to define the data set or subset you are reporting. " _
                    & "Leave the fields blank if you are reporting on all data. Click 'Run' to validate."
        Case "Export" ' Export main
            strInstructions = "After opening a report from the report tab, use the Export menu above in the application menu to export reports to your desired format."
        Case "UtahLab" ' Exports > Utah Lab etc.
            strInstructions = "Choose the export you would like to run."
        Case "DbAdmin" ' DB Admin main
            strInstructions = "The database administration tab is currently not in use for this application."
            'strInstructions = ""
    End Select
    
    'populate caption & display instructions
    If ctrl.ControlType = acLabel Then
        ctrl.Caption = strInstructions
        If strContext <> "DbAdmin" Then
            ctrl.visible = True
        End If
    End If
    
Exit_Handler:
    Exit Sub
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - PopulateInstructions[mod_App_UI])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' FUNCTION:     PopulateSpeciesPriorities
' Description:  Populate species priority values from species priority concatenation
' Assumptions:  Park priority textboxes are named tbxPARKPriority (e.g. tbxZIONPriority)
' Parameters:   parkCode - 4 character park code (string)
'               priorities - species priority string concatenation for all parks (e.g. "BLCA-1|COLM-Transect|FOBU-1")
' Returns:      Priority - value for park species priority (string)
' Throws:       none
' References:   none
' Source/date:
' Adapted:      Bonnie Campbell, April 9, 2015 - for NCPN tools
' Revisions:
'   BLC - 4/9/2015 - initial version
'   BLC - 5/26/2015 - moved from mod_Species to mod_App_UI
' ---------------------------------
Public Function PopulateSpeciesPriorities(ParkCode As String, priorities As String) As String

On Error GoTo Err_Handler

Dim ParkPriorities As Variant
Dim i As Integer

    'check if parkCode is in priorities string
    If Len(priorities) > Len(Replace(priorities, ParkCode, "")) Then
    
        'prepare the Park Priority values
        ParkPriorities = Split(priorities, "|")
        
        'set park priority values
        For i = 0 To UBound(ParkPriorities)
            'does Park have a priority value?
            If ParkCode = Left(ParkPriorities(i), 4) Then
                PopulateSpeciesPriorities = Replace(ParkPriorities(i), ParkCode + "-", "")
            End If
        Next
        
    Else
        'not listed
        PopulateSpeciesPriorities = "X"
    
    End If
    
Exit_Handler:
    Exit Function
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - PopulateSpeciesPriorities[mod_App_UI])"
    End Select
    Resume Exit_Handler
End Function

' ---------------------------------
' SUB:          Initialize
' Description:  initialize application values
' Assumptions:  -
' Parameters:   N/A
' Returns:      N/A
' Throws:       none
' References:   none
' Source/date:
' Adapted:      Bonnie Campbell, February 6, 2015 - for NCPN tools
' Revisions:
'   BLC - 2/6/2015  - initial version
'   BLC - 2/19/2015 - added dynamic getParkState() & standard error handling
'   BLC - 3/4/2015  - shifted colors to mod_Color, removed setting of park, state, tgtYear TempVars
'   BLC - 5/13/2015 - stub only
'   BLC - 11/19/2015 - added CreateEnums call to create application specific Enums,
'                      updated documentation to reflect mod_App_UI vs. mod_Init
' ---------------------------------
Public Sub Initialize()
On Error GoTo Err_Handler

    'create the enums specific to this application from the Enums table & mod_App_Enum stub module
    CreateEnums

    'set application UI display
'     SetStartupOptions "AppTitle", dbText, "NCPN Big Rivers"

Exit_Handler:
    Exit Sub
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - Initialize[mod_App_UI])"
    End Select
    Resume Exit_Handler
End Sub

' ================================ Big Rivers ===========================
' ---------------------------------
' SUB:          SetHints
' Description:  Sets hints for form actions
' Assumptions:  -
' Parameters:   frm - form object to set hints on (form)
'               strForm - form name (string)
' Returns:      N/A
' Throws:       none
' References:   none
' Source/date:
' Adapted:      Bonnie Campbell, July 27, 2015 - for NCPN tools
' Revisions:
'   BLC - 7/27/2015  - initial version
' ---------------------------------
Public Sub SetHints(frm As Form, strForm As String)
On Error GoTo Err_Handler

' Forms!Mainform!Subform1.Form!
 
    With frm!fsub.Form
 
        Select Case strForm
 
            Case "fsub_Photo_FTOR_Details"
 
                !lblCloseupHint.Caption = "Is the photo a closeup?"
                !lblReplacementHint.Caption = "Does photo replace another?"
                !lblCommentHint.Caption = ""
 
                Select Case TempVars("phototype")
                    Case "R" 'reference
                        !lblPhotogLocHint.Caption = "from river, 10m upstream, etc."
                        !lblSubjectLocHint.Caption = "CP1, RM2, etc."
                    Case "O" 'overview
                        !lblPhotogLocHint.Caption = ""
                        !lblSubjectLocHint.Caption = "O1, O2, etc."
                    Case "T" 'transect
                        !lblPhotogLocHint.Caption = "T + transect# - order# (T2-1)"
                        !lblSubjectLocHint.Caption = ""
                    Case "F" 'feature
                        !lblPhotogLocHint.Caption = "F + transect# - order# " & vbCrLf & "(F3/4-2)"
                        !lblSubjectLocHint.Caption = ""
                End Select
 
            Case "fsub_Photo_Other_Details"
                !lblDescriptionHint.Caption = ""
            Case Else
 
        End Select
 
        !lblPhotoNumHint.Caption = "P + Month" & vbCrLf & "(Jan-Sep=0-9,Oct-Dec=A-C) + day(01-31) + " & vbCrLf & "4-digit camera seq# " & vbCrLf & "(PA010300 = Jan 1, #300)"
                  
      End With
      
Exit_Handler:
    Exit Sub
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - SetHints[mod_App_UI])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          ClickAction
' Description:  Handles click events for various form links
' Assumptions:  Link caption and tag text matches action text values.
'               If a link caption &/or tag changes, the corresponding action must change
'               here too.
' Parameters:   action - concatenated link label caption & tag (string)
' Returns:      N/A
' Throws:       none
' References:   none
' Source/date:
' Adapted:      Bonnie Campbell, February 6, 2015 - for NCPN tools
' Revisions:
'   BLC - 4/26/2016  - initial version
' ---------------------------------
Public Sub ClickAction(action As String)
On Error GoTo Err_Handler

    Dim fName As String, rName As String, oArgs As String
    
    action = LCase(Nz(Trim(action), ""))
    
    'defaults
    fName = ""
    rName = ""
    oArgs = ""
    
    Select Case action
        'Where?
        Case "site"
'            fName = "Task"
        Case "feature"
'            fName = "Task"
        Case "transect"
            fName = "Transect"
            oArgs = ""
        Case "plot"
        'Sampling
        Case "event"
            fName = "Events"
            oArgs = "" 'site & protocol IDs
        Case "vegplots"
            fName = "VegPlot"
            oArgs = "" 'site & protocol IDs
        Case "location"
            fName = "Location"
            oArgs = "" 'collection source name - feature (A-G), transect #(1-8) &
        Case "people"
        'Vegetation
        Case "woody canopy cover"
            fName = "VegWalk" '"WoodyCanopyCover"
            oArgs = "1|2016|WCC"
        Case "understory cover"
        Case "vegetation walk"
        Case "species"
        'Observations
        Case "photos"
        Case "transducers"
            fName = "Transducer"
            oArgs = ""
        'Trip Prep
        Case "vegplot"
            rName = "VegPlot"
            oArgs = ""
        Case "vegwalk"
            rName = "VegWalk"
            oArgs = ""
        Case "photo"
            rName = "Photo"
            oArgs = ""
        Case "transducer"
            rName = "Transducer"
        Case "tasks"
            fName = "Task"
        'Reports
        Case "link1"
            rName = "rptNew"
    End Select

    If Len(fName) > 0 Then
        Forms("Main").visible = False
        DoCmd.OpenForm fName, acNormal, OpenArgs:=oArgs
    ElseIf Len(rName) > 0 Then
        'print preview mode - acViewPreview
        DoCmd.OpenReport rName, acViewPreview
    End If

Exit_Handler:
    Exit Sub
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - ClickAction[mod_App_UI])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' SUB:          GetParks
' Description:  Retrieves list of parks from database
' Assumptions:  -
' Parameters:   active - flag if park is currently being sampled, 1-active, 0-inactive (boolean)
' Returns:      parks - list of park codes separated by "|" (string)
' Throws:       none
' References:   none
' Source/date:
' Adapted:      Bonnie Campbell, May 18, 2016 - for NCPN tools
' Revisions:
'   BLC - 5/18/2016  - initial version
' ---------------------------------
Public Function GetParks() As String
On Error GoTo Err_Handler

    'defaults
        

Exit_Handler:
    Exit Function
    
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - GetParks[mod_App_UI])"
    End Select
    Resume Exit_Handler
End Function

' ---------------------------------
' Sub:          PopulateForm
' Description:  Populate a form using a specific record for edits
' Assumptions:  -
' Parameters:   -
' Returns:      -
' Throws:       none
' References:   -
' Source/date:  Bonnie Campbell, June 1, 2016 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 6/1/2016 - initial version
'   BLC - 6/2/2016 - moved from forms (EventsList, TaglineList)
' ---------------------------------
Public Sub PopulateForm(frm As Form, ID As Long)
On Error GoTo Err_Handler
    Dim strSQL As String

    With frm
        
        'find the form & populate its controls from the ID
        Select Case .Name
            Case "Contact"
                strSQL = GetTemplate("s_form_edit", "tbl" & PARAM_SEPARATOR & "Contact|id" & PARAM_SEPARATOR & ID)
                .Controls("tbxID").ControlSource = "ID"
                .Controls("tbxFirst").ControlSource = "FirstName"
                .Controls("tbxMI").ControlSource = "MiddleInitial"
                .Controls("tbxLast").ControlSource = "LastName"
                .Controls("tbxEmail").ControlSource = "Email"
                .Controls("tbxUsername").ControlSource = "Username"
                .Controls("tbxOrganization").ControlSource = "Organization"
                .Controls("tbxPhone").ControlSource = "WorkPhone"
                .Controls("tbxPosition").ControlSource = "PositionTitle"
                .Controls("tbxExtension").ControlSource = "WorkExtension"
            Case "Events"
                strSQL = GetTemplate("s_form_edit", "tbl" & PARAM_SEPARATOR & "Event|id" & PARAM_SEPARATOR & ID)
                .Controls("tbxID").ControlSource = "ID"
                .Controls("tbxStartDate").ControlSource = "StartDate"
            Case "Tagline"
                strSQL = GetTemplate("s_form_edit", "tbl" & PARAM_SEPARATOR & "Tagline|id" & PARAM_SEPARATOR & ID)
                'set form fields to record fields as datasource
                .Controls("tbxID").ControlSource = "ID"
                .Controls("cbxCause").ControlSource = "HeightType"
                .Controls("tbxDistance").ControlSource = "LineDistance_m"
                .Controls("tbxHeight").ControlSource = "Height_cm"
            Case "Transducer"
                strSQL = GetTemplate("s_form_edit", "tbl" & PARAM_SEPARATOR & "Transducer|id" & PARAM_SEPARATOR & ID)
                'set form fields to record fields as datasource
                .Controls("tbxID").ControlSource = "ID"
                .Controls("cbxTiming").ControlSource = "Timing"
                .Controls("cbxTransducer").ControlSource = "TransducerNumber"
                .Controls("tbxSerialNo").ControlSource = "SerialNumber"
                .Controls("tbxSampleDate").ControlSource = "ActionDate"
                .Controls("tbxSampleTime").ControlSource = "ActionTime"
                .Controls("chkSurveyed").ControlSource = "IsSurveyed"
            Case "VegPlot"
                strSQL = GetTemplate("s_form_edit", "tbl" & PARAM_SEPARATOR & "VegPlot|id" & PARAM_SEPARATOR & ID)
                'set form fields to record fields as datasource
                .Controls("tbxID").ControlSource = "ID"
                .Controls("tbxNumber").ControlSource = "PlotNumber"
                .Controls("tbxDistance").ControlSource = "Distance"
                .Controls("tbxModalSedSize").ControlSource = "ModalSedSize"
                .Controls("tbxPctFines").ControlSource = "PctFines"
                .Controls("tbxPctWater").ControlSource = "PctWater"
                .Controls("tbxPctURC").ControlSource = "PctURC"
                .Controls("tbxPlotDensity").ControlSource = "PlotDensity"
                .Controls("chkNoCanopyVeg").ControlSource = "NoCanopyVeg"
                .Controls("chkNoRootedVeg").ControlSource = "NoRootedVeg"
                .Controls("chkNoIndicatorSpecies").ControlSource = "NoIndicatorSpecies"
                .Controls("chkHasSocialTrails").ControlSource = "HasSocialTrails"
        End Select
    
        .RecordSource = strSQL
        
    End With

Exit_Handler:
    Exit Sub
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - PopulateForm[mod_App_UI])"
    End Select
    Resume Exit_Handler
End Sub

' ---------------------------------
' Sub:          DeleteRecord
' Description:  Delete a specific record from a table
' Assumptions:  -
' Parameters:   -
' Returns:      -
' Throws:       none
' References:   -
' Source/date:  Bonnie Campbell, June 1, 2016 - for NCPN tools
' Adapted:      -
' Revisions:
'   BLC - 6/1/2016 - initial version
'   BLC - 6/2/2016 - moved from forms (TaglineList, EventsList) to mod_App_UI
' ---------------------------------
Public Sub DeleteRecord(tbl As String, ID As Long)
On Error GoTo Err_Handler
    Dim strSQL As String

    'find the form & populate its controls from the ID
    Select Case tbl
        Case "Contact"
            strSQL = GetTemplate("d_form_record", "tbl" & PARAM_SEPARATOR & "Contact|id" & PARAM_SEPARATOR & ID)
        Case "Event"
            strSQL = GetTemplate("d_form_record", "tbl" & PARAM_SEPARATOR & "Event|id" & PARAM_SEPARATOR & ID)
        Case "Tagline"
            strSQL = GetTemplate("d_form_record", "tbl" & PARAM_SEPARATOR & "Tagline|id" & PARAM_SEPARATOR & ID)
    End Select
    
    If IsNull(strSQL) Or Len(strSQL) = 0 Then GoTo Exit_Handler
Debug.Print strSQL
    DoCmd.SetWarnings False
    DoCmd.RunSQL strSQL
    DoCmd.SetWarnings True
    
    'show deleted record message & clear
    DoCmd.OpenForm "MsgOverlay", acNormal, , , , acDialog, _
        tbl & PARAM_SEPARATOR & ID & _
        "|Type" & PARAM_SEPARATOR & "info"
        
Exit_Handler:
    Exit Sub
Err_Handler:
    Select Case Err.Number
      Case Else
        MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical, _
            "Error encountered (#" & Err.Number & " - DeleteRecord[mod_App_UI])"
    End Select
    Resume Exit_Handler
End Sub

Public Function SetStartupOptions(propertyname As String, _
    propertytype As Variant, propertyvalue As Variant) _
    As Boolean
  Dim dbs As Object
  Dim prp As Object
  Set dbs = Application.CurrentDb
  On Error Resume Next
  dbs.Properties(propertyname) = propertyvalue
  If Err.Number = 3270 Then
    Set prp = dbs.CreateProperty(propertyname, _
        propertytype, propertyvalue)
    dbs.Properties.Append prp
    Application.RefreshTitleBar
  Else
    SetStartupOptions = False
  End If
  Set dbs = Nothing
  Set prp = Nothing
End Function