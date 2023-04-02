using Q2.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q2.DAO
{
    internal class StudentDAO
    {
        public List<Student> GetStudents()
        {
            List<Student> students = new List<Student>();
            try
            {
                var context = new PE_PRN211_23SprB1Context();
                students = context.Students.ToList();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
            return students;
        }

        public Student GetStudent(int id)
        {
            Student student = null;
            try
            {
                var context = new PE_PRN211_23SprB1Context();
                student = context.Students.FirstOrDefault(x => x.Id == id);
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
            return student;
        }

        public void UpdateStudent(Student student)
        {
            try
            {
                var context = new PE_PRN211_23SprB1Context();
                context.Students.Update(student);
                context.SaveChanges();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }

        public void DeleteStudent(int id)
        {
            try
            {
                var context = new PE_PRN211_23SprB1Context();
                var student = context.Students.FirstOrDefault(x => x.Id == id);
                if (student != null)
                {
                    var classes = context.Classes.Where(c => c.Students.Any(s => s.Id == id));
                    foreach (var c in classes)
                    {
                        var sclass = c.Students.FirstOrDefault(s => s.Id == id);
                        c.Students.Remove(sclass);
                    }
                    context.Students.Remove(student);
                    context.SaveChanges();
                }
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }
    }
}
