using Microsoft.AspNetCore.Mvc;
using Q3.DataAccess;
using Q3.Models;

namespace Q3.Controllers
{
    public class StudentController : Controller
    {
        private StudentDAO studentDAO = new StudentDAO();
        public IActionResult Index()
        {
            List<Student> students = studentDAO.GetStudents();
            ViewBag.sts = students;
            return View("Index");
        }

        public IActionResult Filter(string gen)
        {
            List<Student> students = studentDAO.Filter(gen);
            ViewBag.sts = students;
            ViewBag.filter = gen;
            return View("Index");
        }
    }
}
