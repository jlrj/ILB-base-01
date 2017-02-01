Imports System.Data.SqlClient

Public Class CreateUser
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        Dim myConn As SqlConnection
        Dim myCmd As SqlCommand
        Dim myReader As SqlDataReader
        Dim results As String


        'Create a Connection object.
        'myConn = New SqlConnection("Data Source=JLRJ-LAPTOP\SQL2014EXPRESS;Initial Catalog=ILB-nData;User ID=ILB-User;Password=ilb.1010")
        myConn = New SqlConnection("Data Source = 184.168.194.77;Initial Catalog=ILB-base-01;User ID=ILB_DB_User;Password=pwd.1234")


        'Create a Command object.
        myCmd = myConn.CreateCommand
        myCmd.CommandText = "INSERT INTO Tabla_Usuarios (Nombre, ApPaterno, ApMaterno, TipoUsuario, email, Telefono, Usuario, Password) VALUES " +
                                        "('" + txtNombreUsuario.Text + "','" + txtApellidoPaterno.Text + "','" + txtApellidoMaterno.Text +
                        "','" + txtTipoUsuario.Text + "','" + txtEmail.Text + "','" + txtTelefono.Text +
                        "','" + txtUsuario.Text + "','" + txtPassword.Text + "')"



        'Open the connection.
        myConn.Open()


        myReader = myCmd.ExecuteReader()
        results = myReader.FieldCount




        'Concatenate the query result into a string.
        'Do While myReader.Read()
        '    results = results & myReader.GetString(0) & vbTab & myReader.GetString(1) & vbLf
        'Loop
        'Display results.
        'MsgBox(results)
        glbClase.gpAlert(results)
        'Close the reader and the database connection.
        myReader.Close()
        myConn.Close()
    End Sub
End Class