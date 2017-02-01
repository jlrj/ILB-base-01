

Imports System.Data.SqlClient
Imports System.Xml.Linq

Public Class Login1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim myConn As SqlConnection
        Dim myCmd As SqlCommand
        Dim myReader As SqlDataReader
        Dim results As String


        'Create a Connection object.
        myConn = New SqlConnection("Data Source = 184.168.194.77;Initial Catalog=ILB-base-01;User ID=ILB_DB_User;Password=pwd.1234")

        'Create a Command object.
        myCmd = myConn.CreateCommand
        myCmd.CommandText = "Select * from Tabla_Usuarios where Usuario ='" + txtUsuario.Text + "'" + " And Password = '" + txtPassword.Text + "'"
        'myCmd.CommandText = "Select * from Tabla_Usuarios where Password = '" + txtPassword.Text + "'"



        'Open the connection.
        myConn.Open()


        myReader = myCmd.ExecuteReader()
        'results = myReader.FieldCount
        results = ""

        If myReader.HasRows Then
            Do While myReader.Read()
                results = results + (myReader.GetInt32(0) & vbTab & myReader.GetString(5)) & vbCrLf

            Loop
        Else
            Console.WriteLine("No rows found.")
        End If


        If myReader.HasRows = True Then
            glbClase.gpAlert("Login esxitoso!")
        Else
            glbClase.gpAlert("Verificar Usuario / Contraseña")
        End If



        'Concatenate the query result into a string.
        'Do While myReader.Read()
        '    results = results & myReader.GetString(0) & vbTab & myReader.GetString(1) & vbLf
        'Loop
        'Display results.
        'MsgBox(results)

        'Close the reader and the database connection.
        myReader.Close()
        myConn.Close()
    End Sub
End Class