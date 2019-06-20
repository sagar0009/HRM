<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FinalP.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css1/css/QMXWPE.css" rel="stylesheet" />
    <link href="css1/scss/QMXWPE_2.css" rel="stylesheet" />

      <div class="row">
  <section class="section">
    <header>
      <h3>Register Form</h3>
    </header>
    <main>
    <form id="form1" runat="server">
          
        
         <div class="form-item-triple box-item">
          <div class="form-item ">
      

          <asp:TextBox ID="TxtFirstName" runat="server" type="text" name="name" placeholder="First Name" ></asp:TextBox>
                 <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
              <div class="form-item ">
          <asp:TextBox ID="TxtMiddleName" runat="server" type="text" name="name" placeholder="Middle Name" ></asp:TextBox>
                 <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
              </div>
          <div class="form-item "> 
          <asp:TextBox ID="TxtLastName" runat="server" type="text" name="name" placeholder="Last Name" ></asp:TextBox>
        
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
        </div>


          <div class="form-item-double box-item">
      <div class="form-item ">
          <asp:TextBox ID="TxtEmail" runat="server" type="email" name="email" placeholder="Email"></asp:TextBox>
          <small class="errorEmail"><i class="fa fa-envelope" aria-hidden="true"></i> email is not valid</small>
        </div>
              <div class="form-item ">
          <asp:TextBox ID="TxtCountry" runat="server" type="text" placeholder="Country"></asp:TextBox>
      
      </div>
        </div>


          <div class="form-item-double box-item">
         <div class="form-item ">
        <asp:TextBox ID="TxtAddress" type="text" runat="server" name="address" placeholder="Address"></asp:TextBox>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
        
       </div>



         <div class="form-item-double box-item">
      <div class="form-item ">
         <asp:TextBox ID="TxtPhone" type="text" runat="server" name="phone" placeholder="Phone"></asp:TextBox>
                </div>
             </div>
      
        <div class="form-item-double box-item">
         <div class="form-item ">
             <label class="label">Job Type</label>
             </div>
               <div class="form-item ">
            <asp:DropDownList ID="DdlJobList" type="DropDownList" runat="server">
                <asp:ListItem Value="1">Advertising</asp:ListItem>
                <asp:ListItem Value="2">Accounting</asp:ListItem>
                   </asp:DropDownList>
              </div>
       </div>

         
        <div class="form-item-double box-item">
          <div class="form-item ">
            <asp:TextBox ID="TxtState" type="text" runat="server" name="strNumber" placeholder="State" ></asp:TextBox>
            <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
            <small class="errorNum"><i class="fa fa-asterisk" aria-hidden="true"></i> must be a number</small>
          </div>
               
          <div class="form-item">
            <asp:TextBox ID="TxtZipCode" type="text" runat="server" name="zCode" placeholder="Zip Code"></asp:TextBox>
            <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
            <small class="errorNum"><i class="fa fa-asterisk" aria-hidden="true"></i> must be a number</small>
          </div>
            </div>
       
         

          
        <div class="form-item-triple box-item">
            <div class="radio-label"> 
              <label class="label">Gender</label>
            </div>
            <div class="form-item"> 
              <asp:RadioButton ID="MaleRadioButton"  type="radiobtn" runat="server"/>
              <label for="Male">Male</label>
            </div>
            <div class="form-item"> 
              <asp:RadioButton ID="FemaleRadioButton" type="radiobtn" runat="server"/>
              <label for="Female">Female</label>
            </div>
          </div>


      <div class="form-item-double box-item">
      <div class="form-item ">
         <asp:TextBox ID="TxtPassword" type="text" runat="server" placeholder="New Password"></asp:TextBox>
                </div>
      
          <div class="form-item ">
         <asp:TextBox ID="TxtRePass" type="text" runat="server" name="phone" placeholder="Re-Enter Password"></asp:TextBox>
                </div>
          </div>
      

        <div class="form-item">
          <asp:Button ID="BtnRegister" type="button" runat="server" class="submit" text="Register" />
        </div>
      </form>
    </main>
    <footer>
      <p>Already have an account? <a href="#">Login here</a></p>
    </footer>
    <i class="wave"></i>
  </section>
</div>



</asp:Content>
