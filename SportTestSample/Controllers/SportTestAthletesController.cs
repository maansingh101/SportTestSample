using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SportTestSample.Data;
using SportTestSample.Models;

namespace SportTestSample.Controllers
{
    public class SportTestAthletesController : BaseController
    {
        private readonly ApplicationDbContext _context;

        public SportTestAthletesController(ApplicationDbContext context, UserManager<AspNetUsers> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        // GET: SportTestAthletes
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.SportTestAthletess.Include(s => s.SportsTest);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: SportTestAthletes/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sportTestAthletes = await _context.SportTestAthletess
                .Include(s => s.SportsTest)
                .FirstOrDefaultAsync(m => m.EntryId == id);
            if (sportTestAthletes == null)
            {
                return NotFound();
            }

            return View(sportTestAthletes);
        }

        // GET: SportTestAthletes/Create
        public IActionResult Create(Int32 SportsTestFK=0)
        {
            ViewData["AthletesFK"] = new SelectList(_context.atheleteViewModels.FromSql("prAthlete_Get"), "EntryId", "Athlete", SportsTestFK);
            ViewData["SportsTestFK"] = new SelectList(_context.sportsTests, "EntryID", "EntryID");
            return View();
        }

        // POST: SportTestAthletes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("EntryId,AthletesFK,SportsTestFK,CreatedBy,CreatedOn,UpdatedBy,UpdatedOn,Distance")] SportTestAthletes sportTestAthletes)
        {
            if (ModelState.IsValid)
            {
                if (User.IsInRole("Coach") == true)
                {
                    sportTestAthletes.CreatedOn = DateTime.Now;
                    sportTestAthletes.CreatedBy = this.AspNetUser.EntryId;
                    _context.Add(sportTestAthletes);
                    await _context.SaveChangesAsync();
                    return Redirect($@"\SportsTests\Details\{sportTestAthletes.SportsTestFK}");
                }
                else
                {
                    ModelState.AddModelError("Coach", "Only Coach permitted to add data");
                }
            }
            ViewData["AthletesFK"] = new SelectList(_context.atheleteViewModels.FromSql("prAthlete_Get"), "EntryId", "Athlete", sportTestAthletes.AthletesFK);
            ViewData["SportsTestFK"] = new SelectList(_context.sportsTests, "EntryID", "EntryID", sportTestAthletes.SportsTestFK);
            return View(sportTestAthletes);
        }

        // GET: SportTestAthletes/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sportTestAthletes = await _context.SportTestAthletess.FindAsync(id);
            if (sportTestAthletes == null)
            {
                return NotFound();
            }
            ViewData["AthletesFK"] = new SelectList(_context.atheleteViewModels.FromSql("prAthlete_Get"), "EntryId", "Athlete", sportTestAthletes.AthletesFK);
            ViewData["SportsTestFK"] = new SelectList(_context.sportsTests, "EntryID", "EntryID", sportTestAthletes.SportsTestFK);
            return View(sportTestAthletes);
        }

        // POST: SportTestAthletes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("EntryId,AthletesFK,SportsTestFK,CreatedBy,CreatedOn,UpdatedBy,UpdatedOn,Distance")] SportTestAthletes sportTestAthletes)
        {
            if (id != sportTestAthletes.EntryId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    if (User.IsInRole("Coach") == true)
                    {
                        sportTestAthletes.UpdatedOn = DateTime.Now;
                        sportTestAthletes.UpdatedBy = this.AspNetUser.EntryId;
                        _context.Update(sportTestAthletes);
                        await _context.SaveChangesAsync();

                    }
                    else
                    {
                        ModelState.AddModelError("Coach", "Only Coach permitted to add data");
                    }
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SportTestAthletesExists(sportTestAthletes.EntryId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return Redirect($@"\SportsTests\Details\{sportTestAthletes.SportsTestFK}");
            }
            ViewData["AthletesFK"] = new SelectList(_context.atheleteViewModels.FromSql("prAthlete_Get"), "EntryId", "Athlete", sportTestAthletes.AthletesFK);
            ViewData["SportsTestFK"] = new SelectList(_context.sportsTests, "EntryID", "EntryID", sportTestAthletes.SportsTestFK);
            return View(sportTestAthletes);
        }

        // GET: SportTestAthletes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sportTestAthletes = await _context.SportTestAthletess
                .Include(s => s.SportsTest)
                .FirstOrDefaultAsync(m => m.EntryId == id);
            if (sportTestAthletes == null)
            {
                return NotFound();
            }

            return View(sportTestAthletes);
        }

        // POST: SportTestAthletes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var sportTestAthletes = await _context.SportTestAthletess.FindAsync(id);
            if (User.IsInRole("Coach"))
            {
           
                _context.SportTestAthletess.Remove(sportTestAthletes);
                await _context.SaveChangesAsync();
               
            }

            return Redirect($@"\SportsTests\Details\{sportTestAthletes.SportsTestFK}");

        }

        private bool SportTestAthletesExists(int id)
        {
            return _context.SportTestAthletess.Any(e => e.EntryId == id);
        }
    }
}
