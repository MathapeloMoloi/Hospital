/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospitalServices;
import hospitalModel.*;
import java.util.ArrayList;
import java.util.List;
import hospitalUtil.NewHibernateUtil;
import java.text.SimpleDateFormat;
import java.util.Date;
import net.sf.ehcache.hibernate.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import java.util.HashSet;
import java.util.Set;
/**
 *
 * @author Mathapelo Moloi
 */
public class ReceptionistService {
    public boolean receptionLogin(String recpNo, String userName){
        Session session = null;
        session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        Receptionist recep = null;
        try{
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Receptionist where recepNo = '"+recpNo+"'");
            recep = (Receptionist)query.uniqueResult();
            tx.commit();
            if(recep!=null && recep.getUsername().equalsIgnoreCase(userName)){
                
                return true;
            }
            
        }
        catch(Exception e){
            if(tx != null)
                tx.rollback();
            System.out.println(e);
        }
        finally{
            session.close();
        }
        return false;
    }
    public List<Doctor> getDoctors(){
        List<Doctor> dr = new ArrayList();
        Session session = null;
        session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try{
            tx = session.getTransaction();
            tx.begin();
            dr = session.createQuery("from Doctor").list();
            tx.commit();
        }catch(Exception e){
            if(tx != null){
                tx.rollback();
            }
            e.printStackTrace();
        }
        finally{
            session.close();
        }
        return dr;
    }
    public List<Nurse> getNurses(){
        List<Nurse> nurse = new ArrayList();
        Session session = null;
        session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try{
            tx = session.getTransaction();
            tx.begin();
            nurse = session.createQuery("from Nurse").list();
            tx.commit();
        }catch(Exception e){
            if(tx != null){
                tx.rollback();
            }
            e.printStackTrace();
        }
        finally{
            session.close();
        }
        return nurse;
    }
    public List<Patient> getPatients(){
        List<Patient> p = new ArrayList();
        Session session = null;
        session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try{
            tx = session.getTransaction();
            tx.begin();
            p = session.createQuery("from Patient").list();
            tx.commit();
        }catch(Exception e){
            if(tx != null){
                tx.rollback();
            }
            e.printStackTrace();
        }
        finally{
            session.close();
        }
        return p;
    }
    public List<Patientappointment> getAppoinments(){
        List<Patientappointment> pa = new ArrayList();
        Session session = null;
        session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try{
            tx = session.getTransaction();
            tx.begin();
            pa = session.createQuery("from PatientAppointment").list();
            tx.commit();
        }catch(Exception e){
            if(tx != null){
                tx.rollback();
            }
            e.printStackTrace();
        }
        finally{
            session.close();
        }
        return pa;
    }
    
    public Doctor getDr(){
        Doctor d = new Doctor();
        Session session = null;
        session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try{
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Doctor where docno = '" + "2" + "'");
            d = (Doctor)query.uniqueResult();
            tx.commit();
        }catch(Exception e){
            if(tx != null){
                tx.rollback();
            }
            e.printStackTrace();
        }
        finally{
            session.close();
        }
        return d;
    }
    public Receptionist getRep(){
        Receptionist r = new Receptionist();
        Session session = null;
        session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try{
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Receptionist where recepno = '" + "110" + "'");
            r = (Receptionist)query.uniqueResult();
            tx.commit();
        }catch(Exception e){
            if(tx != null){
                tx.rollback();
            }
            e.printStackTrace();
        }
        finally{
            session.close();
        }
        return r;
    }
    public Patientmedication getMedication(){
        Patientmedication p = new Patientmedication();
        Session session = null;
        session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try{
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Patientmedication where drugno = '" + 200 + "'");
            p = (Patientmedication)query.uniqueResult();
            tx.commit();
        }catch(Exception e){
            if(tx != null){
                tx.rollback();
            }
            e.printStackTrace();
        }
        finally{
            session.close();
        }
        return p;
    }
    public Set getPatientMedications() {
        Set<Patientmedication> patientMedications = new HashSet<>();
        patientMedications.add(getMedication());
        return patientMedications;
    }
    public Boolean addPatient(String pNo,String pname,String psurname,String streetName,int hNo,String city,int cell,char sex,char mStatus,String aStatus){
        Patient p = new Patient();
        Date d = new Date();
        String pattern= "yyyy-mm-dd";
        SimpleDateFormat format = new SimpleDateFormat(pattern);
        format.format(d);
        try{
            
            Configuration config = new Configuration().configure();
            SessionFactory factory = config.buildSessionFactory(); 
            Session session = factory.openSession(); 
            Transaction trans=session.beginTransaction();
            p.setInPatientNo(pNo);
            p.setPatientFirstName(pname);
            p.setPatientLastName(psurname);
            p.setStreetName(streetName);
            p.setHouseNo(hNo);
            p.setCity(city);
            p.setCellphone(cell);
            p.setDateOfBirth(d);
            p.setSex(sex);
            p.setMaritalStatus(mStatus);
            p.setDateRegistration(d);
            p.setAdmissionStatus(aStatus);
            p.setDoctor(getDr());
            p.setReceptionist(getRep());
            p.setPatientmedication(getMedication());
            
            session.save(p);
            trans.commit();
            return true;
        }catch(Exception e){
            return false;
        }
         
    }
    public Boolean updatePatient(String pNo,String pname,String psurname,String streetName,int hNo,String city,int cell,char sex,char mStatus,String aStatus){
        Patient p = new Patient();
        Date d = new Date();
        String pattern= "yyyy-mm-dd";
        SimpleDateFormat format = new SimpleDateFormat(pattern);
        format.format(d);
        try{
            
            Configuration config = new Configuration().configure();
            SessionFactory factory = config.buildSessionFactory(); 
            Session session = factory.openSession(); 
            Transaction trans=session.beginTransaction();
            p.setInPatientNo(pNo);
            p.setPatientFirstName(pname);
            p.setPatientLastName(psurname);
            p.setStreetName(streetName);
            p.setHouseNo(hNo);
            p.setCity(city);
            p.setCellphone(cell);
            p.setDateOfBirth(d);
            p.setSex(sex);
            p.setMaritalStatus(mStatus);
            p.setDateRegistration(d);
            p.setAdmissionStatus(aStatus);
            p.setDoctor(getDr());
            p.setReceptionist(getRep());
            p.setPatientmedication(getMedication());
            
            
            session.update(p);
            trans.commit();
            return true;
        }catch(Exception e){
            return false;
        }
         
    }
    public boolean deletePatient(String PatientId){
        Patient p = new Patient();
        Patientmedication pm = new Patientmedication();
        Session session = null;
        session = NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try{
            tx = session.getTransaction();
            tx.begin();
            Query query1 = session.createQuery("from PatientMedication where patient_in_patient_no = '" + PatientId + "'");
            pm = (Patientmedication)query1.uniqueResult();
            
            if(pm!=null)
                session.delete(pm);
            
            tx.commit();
            
        }catch(Exception e){
            if(tx != null){
                tx.rollback();
            }
            
        }
        
        try{
            tx = session.getTransaction();
            tx.begin();
            
            Query query = session.createQuery("from Patient where in_patient_no = '" + PatientId + "'");
            
            p = (Patient)query.uniqueResult();
            if(p!=null)
                session.delete(p);
            tx.commit();
            return true;
        }catch(Exception e){
            if(tx != null){
                tx.rollback();
            }
            e.printStackTrace();
            return false;
        }
        finally{
            session.close();
        }
        
    }
    public static void main(String[] args) {
        ReceptionistService r = new ReceptionistService();
        System.out.println(r.getDoctors().get(0).getDocFirstname());
        /*System.out.println(r.updatePatient("606", "lolos", "siss", "ss", 45, "ssss", 454, 'm', 's', "NA"));
        System.out.println(r.deletePatient("606"));*/
    }
}
