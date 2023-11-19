<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Examen2.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 320px">
    <form id="form1" runat="server">
        Usuarios<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UsuarioID" DataSourceID="sqlusuarios" Height="169px" Width="316px">
            <Columns>
                <asp:BoundField DataField="UsuarioID" HeaderText="UsuarioID" ReadOnly="True" SortExpression="UsuarioID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="CorreoElectronico" HeaderText="CorreoElectronico" SortExpression="CorreoElectronico" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlusuarios" runat="server" ConnectionString="<%$ ConnectionStrings:sqlusuario %>" DeleteCommand="DELETE FROM Usuarios WHERE UsuarioID = @UsuarioID;" InsertCommand="INSERT INTO Usuarios VALUES (@UsuarioID, @Nombre, @CorreoElectronico, @Telefono)" ProviderName="<%$ ConnectionStrings:sqlusuario.ProviderName %>" SelectCommand="SELECT * FROM Usuarios WHERE UsuarioID = @UsuarioID;" UpdateCommand="UPDATE Usuarios SET UsuarioID =2, Nombre ='Cris', CorreoElectronico = 'cris@gmail.com', Telefono = '8989-0000'
WHERE UsuarioID = @UsuarioID;">
            <DeleteParameters>
                <asp:ControlParameter ControlID="Tcodigo" Name="UsuarioID" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="Tcodigo" Name="UsuarioID" PropertyName="Text" />
                <asp:ControlParameter ControlID="Tnombre" Name="Nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="Tcorreo" Name="CorreoElectronico" PropertyName="Text" />
                <asp:ControlParameter ControlID="Ttelefono" Name="Telefono" PropertyName="Text" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Tcodigo" Name="UsuarioID" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="Tcodigo" Name="UsuarioID" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            Codigo
            <asp:TextBox ID="Tcodigo" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            Nombre
            <asp:TextBox ID="Tnombre" runat="server"></asp:TextBox>
        </p>
        <p>
            Correo
            <asp:TextBox ID="Tcorreo" runat="server"></asp:TextBox>
        </p>
        Telefono
        <asp:TextBox ID="Ttelefono" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click" Text="Agregar" Width="97px" />
            <asp:Button ID="Button2" runat="server" Height="48px" OnClick="Button2_Click" Text="Borrar" Width="76px" />
            <asp:Button ID="Button3" runat="server" Height="47px" OnClick="Button3_Click" Text="Consultar" />
            <asp:Button ID="Button4" runat="server" Height="46px" OnClick="Button4_Click" Text="Modificar" />
        </p>
        <p>
            Equipos</p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="EquipoID" datasourceid="sqlequipos" Height="169px" Width="316px">
            <Columns>
                <asp:BoundField DataField="EquipoID" HeaderText="EquipoID" ReadOnly="True" SortExpression="EquipoID" />
                <asp:BoundField DataField="TipoEquipo" HeaderText="TipoEquipo" SortExpression="TipoEquipo" />
                <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
                <asp:BoundField DataField="UsuarioID" HeaderText="UsuarioID" SortExpression="UsuarioID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlequipos" runat="server" ConnectionString="<%$ ConnectionStrings:sqlEquipos %>" DeleteCommand="DELETE FROM Equipos WHERE EquipoID =@EquipoID;" InsertCommand="INSERT INTO Equipos VALUES (@EquipoID, @TipoEquipo, @Modelo)" ProviderName="<%$ ConnectionStrings:sqlEquipos.ProviderName %>" SelectCommand="SELECT * FROM [Equipos]
WHERE EquipoID = @EquipoID" UpdateCommand="UPDATE Equipos SET EquipoID =@, TipoEquipo =@, Modelo = @
WHERE EquipoID = @EquipoID">
            <DeleteParameters>
                <asp:ControlParameter ControlID="Tcodigo0" Name="EquipoID" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="Tcodigo0" Name="EquipoID" PropertyName="Text" />
                <asp:ControlParameter ControlID="Tnombre0" Name="TipoEquipo" PropertyName="Text" />
                <asp:ControlParameter ControlID="Tcorreo0" Name="Modelo" PropertyName="Text" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Tcodigo0" Name="EquipoID" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter />
                <asp:ControlParameter ControlID="Tcodigo0" Name="EquipoID" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            EquipoID
            <asp:TextBox ID="Tcodigo0" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            TipoEquipo<asp:TextBox ID="Tnombre0" runat="server"></asp:TextBox>
        </p>
        <p>
            Modelo<asp:TextBox ID="Tcorreo0" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" Height="47px" OnClick="Button1_Click" Text="Agregar" Width="97px" />
            <asp:Button ID="Button6" runat="server" Height="48px" OnClick="Button2_Click" Text="Borrar" Width="76px" />
            <asp:Button ID="Button7" runat="server" Height="47px" OnClick="Button3_Click" Text="Consultar" />
            <asp:Button ID="Button8" runat="server" Height="46px" OnClick="Button4_Click" Text="Modificar" />
        </p>
        <p>
            Reparaciones</p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="TecnicoID" datasourceid="sqlrepa" Height="169px" Width="316px">
            <Columns>
                <asp:BoundField DataField="TecnicoID" HeaderText="TecnicoID" ReadOnly="True" SortExpression="TecnicoID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" SortExpression="Especialidad" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlrepa" runat="server" ConnectionString="<%$ ConnectionStrings:sqlrepa %>" InsertCommand="INSERT INTO Tecnicos VALUES (@TecnicoID, @Nombre, @Especialidad)" SelectCommand="SELECT * FROM [Tecnicos]">
            <InsertParameters>
                <asp:ControlParameter ControlID="Tcodigo1" Name="TecnicoID" PropertyName="Text" />
                <asp:ControlParameter ControlID="Tnombre1" Name="Nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="Tcorreo1" Name="Especialidad" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <p>
            Tecnico ID<asp:TextBox ID="Tcodigo1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            NombreID<asp:TextBox ID="Tnombre1" runat="server"></asp:TextBox>
        </p>
        <p>
            Especialidad<asp:TextBox ID="Tcorreo1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button9" runat="server" Height="47px" OnClick="Button1_Click" Text="Agregar" Width="97px" />
            <asp:Button ID="Button10" runat="server" Height="48px" OnClick="Button2_Click" Text="Borrar" Width="76px" />
            <asp:Button ID="Button11" runat="server" Height="47px" OnClick="Button3_Click" Text="Consultar" />
            <asp:Button ID="Button12" runat="server" Height="46px" OnClick="Button4_Click" Text="Modificar" />
        </p>
    </form>
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
