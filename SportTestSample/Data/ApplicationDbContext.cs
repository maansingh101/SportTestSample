using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using SportTestSample.Models;
using SportTestSample.ViewModel;

namespace SportTestSample.Data
{
    public class ApplicationDbContext : IdentityDbContext<AspNetUsers>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<SportsTest> sportsTests { get; set; }
        public DbSet<SportsTestType> sportsTestTypes { get; set; }
        public DbSet<SportTestAthletes> SportTestAthletess { get; set; }


        public DbQuery<TestViewModel> TestViewModel { get; set; }
        public DbQuery<AtheleteViewModel> atheleteViewModels { get; set; }
        public DbQuery<SportTestAthletesViewModel> SportTestAthletesViewModel { get; set; }
    }
}
