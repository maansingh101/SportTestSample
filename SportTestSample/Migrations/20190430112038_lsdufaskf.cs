using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace SportTestSample.Migrations
{
    public partial class lsdufaskf : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "tbSportTestAthletes",
                columns: table => new
                {
                    EntryId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    AthletesFK = table.Column<int>(nullable: false),
                    SportsTestFK = table.Column<int>(nullable: false),
                    CreatedBy = table.Column<int>(nullable: false),
                    CreatedOn = table.Column<DateTime>(nullable: false),
                    UpdatedBy = table.Column<int>(nullable: false),
                    UpdatedOn = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tbSportTestAthletes", x => x.EntryId);
                    table.ForeignKey(
                        name: "FK_tbSportTestAthletes_tbSportsTest_SportsTestFK",
                        column: x => x.SportsTestFK,
                        principalTable: "tbSportsTest",
                        principalColumn: "EntryID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_tbSportTestAthletes_SportsTestFK",
                table: "tbSportTestAthletes",
                column: "SportsTestFK");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "tbSportTestAthletes");
        }
    }
}
