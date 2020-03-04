using Microsoft.EntityFrameworkCore.Migrations;

namespace OptimoCore.Migrations
{
    public partial class spGetStates : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "State",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CountryId = table.Column<int>(nullable: false),
                    StateName = table.Column<string>(nullable: false),
                    State3Code = table.Column<string>(nullable: true),
                    State2Code = table.Column<string>(nullable: true),
                    Ordering = table.Column<int>(nullable: false),
                    Status = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_State", x => x.Id);
                });
            string procedure = @"CREATE PROCEDURE spGetStates
                                AS
                                BEGIN 
                                SELECT S.[Id]
                                      ,C.[CountryName]
                                      ,S.[CountryId]
                                      ,S.[StateName]
                                      ,S.[State3Code]
                                      ,S.[State2Code]
                                      ,S.[Ordering]
                                      ,S.[Status]
                                  FROM [State] S 
                                  LEFT JOIN [Country] C ON C.Id=S.CountryId
                                  END";
            migrationBuilder.Sql(procedure);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "State");
            string procedure = @"DROP PROCEDURE spGetStates";
            migrationBuilder.Sql(procedure);
        }
    }
}
