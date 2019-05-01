using Microsoft.EntityFrameworkCore.Migrations;

namespace SportTestSample.Migrations
{
    public partial class jfhfjs : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<decimal>(
                name: "Distance",
                table: "tbSportTestAthletes",
                nullable: false,
                defaultValue: 0m);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Distance",
                table: "tbSportTestAthletes");
        }
    }
}
