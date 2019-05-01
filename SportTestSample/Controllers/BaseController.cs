using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Data;
using System.IO;
using SportTestSample.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using SportTestSample.Data;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace SportTestSample.Controllers
{
    public class BaseController : Controller
    {
        public UserManager<AspNetUsers> _userManager;
        AspNetUsers _ZAspNetUser;
        public AspNetUsers AspNetUser
        {
            get
            {
                if (_ZAspNetUser == null)
                {
                    _ZAspNetUser = _userManager.FindByNameAsync(this.User.Identity.Name).Result;
                }
                return _ZAspNetUser;
            }
        }

    }
}