﻿<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // 在应用程序启动时运行的代码
        log4net.Config.XmlConfigurator.Configure(new System.IO.FileInfo(this.Context.Request.PhysicalApplicationPath + @"\Config\log.config"));
        string conPath = this.Context.Request.PhysicalApplicationPath + @"\config\Appconfig.xml";
        string arPath = this.Context.Request.PhysicalApplicationPath + @"\config\ActiveRecordAssemblies.xml";
        Castle.ActiveRecord.Framework.Config.XmlConfigurationSource source = new Castle.ActiveRecord.Framework.Config.XmlConfigurationSource(conPath);
        Castle.ActiveRecord.ActiveRecordStarter.Initialize(Synacast.NHibernateActiveRecord.AppInitialize.LoadAssemblies(arPath), source);
        Synacast.PPInstall.Cache.IPAreaCache.Instance.Init();
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  在应用程序关闭时运行的代码

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // 在出现未处理的错误时运行的代码

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // 在新会话启动时运行的代码

    }

    void Session_End(object sender, EventArgs e) 
    {
        // 在会话结束时运行的代码。 
        // 注意: 只有在 Web.config 文件中的 sessionstate 模式设置为
        // InProc 时，才会引发 Session_End 事件。如果会话模式设置为 StateServer 
        // 或 SQLServer，则不会引发该事件。

    }
       
</script>