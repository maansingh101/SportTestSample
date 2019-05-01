using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SportTestSample.Data;
using SportTestSample.Models;
using SportTestSample.ViewModel;

namespace SportTestSample.Controllers
{
    [Authorize]
    public class SportsTestsController : BaseController
    {
        private readonly ApplicationDbContext _context;

        public SportsTestsController(ApplicationDbContext context, UserManager<AspNetUsers> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        // GET: SportsTests
        public async Task<IActionResult> Index()
        {
            List<TestViewModel> pModel = _context.TestViewModel.FromSql("prSportsTest_Get").ToList();
            return View(pModel);
        }

        // GET: SportsTests/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sportsTest = await _context.sportsTests
              .Include(s => s.SportsTestType)
              .FirstOrDefaultAsync(m => m.EntryID == id);

            var SportsTest = new Tuple<SportsTest, List<SportTestAthletesViewModel>>(sportsTest, _context.SportTestAthletesViewModel.FromSql($"EXEC prSportTestAthletes_GET @SportTestFK={id}").ToList());



            if (sportsTest == null)
            {
                return NotFound();
            }

            return View(SportsTest);
        }

        // GET: SportsTests/Create
        public IActionResult Create()
        {
            ViewData["TestTypeFK"] = new SelectList(_context.sportsTestTypes, "EntryId", "TestTypeName");
            return View();
        }

        // POST: SportsTests/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("EntryID,Date,TestTypeFK,CreatedBy,CreatedOn,UpdatedBy,UpdatedOn")] SportsTest sportsTest)
        {
            if (ModelState.IsValid)
            {
                if (User.IsInRole("Coach") == true)
                {

                    sportsTest.CreatedOn = DateTime.Now;
                    sportsTest.CreatedBy = this.AspNetUser.EntryId;
                    _context.Add(sportsTest);
                    await _context.SaveChangesAsync();
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    ModelState.AddModelError("Coach", "Only Coach permitted to add data");
                }
            }
            ViewData["TestTypeFK"] = new SelectList(_context.sportsTestTypes, "EntryId", "TestTypeName");
            return View(sportsTest);
        }

        // GET: SportsTests/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sportsTest = await _context.sportsTests.FindAsync(id);
            if (sportsTest == null)
            {
                return NotFound();
            }
            ViewData["TestTypeFK"] = new SelectList(_context.sportsTestTypes, "EntryId", "TestTypeName", sportsTest.TestTypeFK);
            return View(sportsTest);
        }

        // POST: SportsTests/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("EntryID,Date,TestTypeFK,CreatedBy,CreatedOn,UpdatedBy,UpdatedOn")] SportsTest psportsTest)
        {
            if (id != psportsTest.EntryID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    if (User.IsInRole("Coach") == true)
                    {
                        var sportsTest = await _context.sportsTests.FindAsync(id);
                        sportsTest.TestTypeFK = psportsTest.TestTypeFK;
                        sportsTest.Date = psportsTest.Date;
                        sportsTest.UpdatedOn = DateTime.Now;
                        sportsTest.UpdatedBy = this.AspNetUser.EntryId;
                        sportsTest.UpdatedOn = DateTime.Now;
                        _context.Update(sportsTest);
                        await _context.SaveChangesAsync();
                    }
                    else
                    {
                        ModelState.AddModelError("Coach", "Only Coach permitted to add data");
                    }
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SportsTestExists(psportsTest.EntryID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["TestTypeFK"] = new SelectList(_context.sportsTestTypes, "EntryId", "EntryId", psportsTest.TestTypeFK);
            return View(psportsTest);
        }

        // GET: SportsTests/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sportsTest = await _context.sportsTests
                .Include(s => s.SportsTestType)
                .FirstOrDefaultAsync(m => m.EntryID == id);
            if (sportsTest == null)
            {
                return NotFound();
            }

            return View(sportsTest);
        }

        // POST: SportsTests/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (User.IsInRole("Coach") == true)
            {
                var sportsTest = await _context.sportsTests.FindAsync(id);
                _context.sportsTests.Remove(sportsTest);
                await _context.SaveChangesAsync();
            }
            return RedirectToAction(nameof(Index));
        }

        private bool SportsTestExists(int id)
        {
            return _context.sportsTests.Any(e => e.EntryID == id);
        }
    }
}
